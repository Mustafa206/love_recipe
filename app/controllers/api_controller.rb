class ApiController < ApplicationController
  require 'rest-client'

  def index
  end

  def show
    @query = params[:q]

    if @query
      response = RestClient.get 'http://www.recipepuppy.com/api/', {:params => {:i => @query}}
      @food = JSON.parse(response)['results']
      @results = @food
      # render json: @results[0]["href"]
    else
      @food = []
    end
  end
end