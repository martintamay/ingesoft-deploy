# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.errors.any?
      session["devise.google_data"] = request.env["omniauth.auth"].except(:extra)
    else
      sign_in @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Google") if is_navigational_format?
    end
    redirect_to '/'
  end

  def facebook
    # busca los datos del usuario según los datos que recibión en el request
    @user = User.from_omniauth(request.env["omniauth.auth"])

    # si hubo errres al actualizar/crear el usuario renderisa devise con los errores
    if @user.errors.any?
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      render 'devise/registrations/new'
    else
      # si se logueo correctamente continua el flujo
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    end
  end

  def failure
    redirect_to root_path
  end
end
