class PlaysController < ApplicationController
  before_action :require_signin, except: [:index, :show]
  before_action :require_admin, except: [:index, :show]

  def index
    @plays = Play.upcoming
  end

  def show
    @play = Play.find(params[:id])
    @recommenders = @play.recommenders
  end

  def edit
    @play = Play.find(params[:id])
  end

  def update
    @play = Play.find(params[:id])
    if @play.update(play_params)
      flash[:notice] = "Play successfully updated!"
      redirect_to @play
    else
      render :edit
    end
  end

  def new
    @play = Play.new
  end

  def create
    @play = Play.new(play_params)
    if @play.save
      flash[:notice] = "Play successfully created!"
      redirect_to @play
    else
      render :new
    end

  end

  def destroy
    @play = Play.find(params[:id])
    @play.destroy
    redirect_to plays_path
  end

  private def play_params
    params.require(:play).permit(:name, :description, :from_price, :starts_at, :image_file_name, :capacity)
  end
end
