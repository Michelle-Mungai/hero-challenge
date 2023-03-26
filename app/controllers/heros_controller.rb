class HerosController < ApplicationController
  def index
    render json: Hero.all
  end

  def show
    hero = Hero.find_by(id: params[:id])
    if hero
      render json: hero
    else
      render json: { error: "Hero not found" }, status: 404
    end
  end
end
