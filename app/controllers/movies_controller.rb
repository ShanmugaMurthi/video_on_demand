class MoviesController < ApplicationController
  def index
    movies = Movie.all
    json_response(movies)
  end
end
