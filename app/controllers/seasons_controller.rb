class SeasonsController < ApplicationController
  def index
    seasons = Season.all
    json_response(seasons)
  end
end
