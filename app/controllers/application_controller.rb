class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :except => [:some_action_without_auth]
  protect_from_forgery with: :exception
  layout '_base'
end
