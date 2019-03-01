class LandingController < ApplicationController
  layout '_base'
  before_action :authenticate_user!, :except => [:index]
  def index
  	@categorias= EventCategory.all
  	@tipo_eventos= EventType.all
  end
end
