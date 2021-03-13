class Api::MoviesController < ApplicationController
  def index
    if params[:actor_id]
      actor = Actor.find_by(id: params[:actor_id].to_i)
      render json: { actor: actor }
    else
      @movies = Movie.all
      render "index.json.jb"
    end
  end

  def show
    @id = params[:id]
    @movie = Movie.find_by(id: @id)
    render "show.json.jb"
  end
end
