class ProfileController < ApplicationController
  layout '_base'
  def index
	 @eventos = Event.all
  end
end

