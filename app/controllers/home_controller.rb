class HomeController < ApplicationController
	before_action :authenticate_user!
  def index
  	@categorias= EventCategory.all
  	@tipo_eventos= EventType.all
  	@eventos = Event.where(nil)
  	@eventos= Event.by_tipo(params[:param1]) if params[:param1].present?
  	@eventos= @eventos.with_ciudad(params[:param2]) if params[:param1].present?
  	@eventos= @eventos.with_fecha(params[:param3]) if params[:param1].present?
  end
end
