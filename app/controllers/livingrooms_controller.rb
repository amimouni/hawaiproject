class LivingroomsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_livingroom, only: [:show, :edit, :update, :destroy]

  def index
    @livingrooms = Livingroom.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end


private

  def set_livingroom
    @livingroom = Livingroom.find(params[:id])
  end



end
