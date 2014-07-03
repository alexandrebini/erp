class CitiesController < ApplicationController
  def index
    @cities = City.includes(:state).limit(20)
    render json: @cities
  end
end