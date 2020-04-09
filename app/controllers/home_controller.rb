class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @api_data = { "version" => "0.0.1", "author" => "Bernardo Pineda" }
    render :json => @api_data
  end
end
