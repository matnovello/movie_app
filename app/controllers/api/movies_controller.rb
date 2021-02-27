class Api::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render "index.json.jb"
  end

  def show
    @id = params[:id]
    @movie = Movie.find_by(id: @id)
    render "show.json.jb"
  end
end
