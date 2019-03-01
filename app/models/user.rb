class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
          :omniauthable, omniauth_providers: [:google_oauth2, :facebook]
   validates :email,presence: true
   validates :password, presence: true
  

  def self.from_omniauth(auth)

    if auth.provider == "facebook"
      @user= User.where(f_provider: auth.provider, f_uid: auth.uid).take
    else
      @user= User.where(g_provider: auth.provider, g_uid: auth.uid).take
    end
    if @user == nil
      @user = User.new
      @user.email = auth.info.email
      @user.password = Devise.friendly_token[0,20]
      @user.save
    end

    if auth.provider == "facebook"
      # una vez es seguro que el usuario existe
      # comprueba si no cambio el email de facebook
      if @user.f_email != auth.info.email
        # si cambió su email se actualiza en el modelo
        @user.update_attribute :f_email, auth.info.email
      end
      # comprueba si no cambio el nombre de facebook
      if @user.f_name != auth.info.name
        # si cambió su nombre se actualiza en el modelo
        @user.update_attribute :f_name, auth.info.name
      end
      # vuelve a setear el uid
      @user.update_attribute :f_uid, auth.uid
      # vuelve a setear el provider a facebook
      @user.update_attribute :f_provider, auth.provider
      # retorna el usuario con todos los datos actualizados
    else
      # Either create a User record or update it based on the provider (Google) and the UID
      if @user.g_email != auth.info.email
        @user.update_attribute :g_email, auth.info.email
      end
      @user.update_attribute :g_provider, auth.provider
      @user.update_attribute :g_uid, auth.uid
      @user.update_attribute :g_token, auth.credentials.token

      @user.update_attribute :g_expires, auth.credentials.expires

      @user.update_attribute :g_expires_at, auth.credentials.expires_at
      @user.update_attribute :g_refresh_token, auth.credentials.refresh_token
    end
    return @user
  end
end