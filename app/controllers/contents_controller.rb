class ContentsController < ApplicationController
  def index
  	contents = Movie.all + Season.all
  	json_response(contents)
  end
end
