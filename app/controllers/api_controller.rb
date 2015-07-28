class ApiController < ApplicationController
  require 'rest-client'

  def index
  end

  def show
    @query = params[:q]

    if @query
      response = RestClient.get 'http://www.recipepuppy.com/api/', {:params => {:i => @query}}
      @food = JSON.parse(response)['results']
      # render json: @food
    else
      @food = []
    end
  end
end