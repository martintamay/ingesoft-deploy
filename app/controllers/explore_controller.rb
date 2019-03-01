class ExploreController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  def index
  	@tipo_eventos= EventType.all
  	@eventos = Event.where(nil)
  	@eventos= Event.by_tipo(params[:param1]) if params[:param1].present?
  	@eventos= @eventos.with_ciudad(params[:param2]) if params[:param1].present?
  	@eventos= @eventos.with_fecha(params[:param3]) if params[:param1].present?
  end
end