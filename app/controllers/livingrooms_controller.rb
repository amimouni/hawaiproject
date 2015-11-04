class LivingroomsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new]
  before_action :set_livingroom, only: [:show, :edit, :update, :destroy]
  # before_action :set_user, only: [:create, :edit, :update, :destroy]


  def index
    @livingrooms = Livingroom.all
    if params[:city]
      if params[:city] != ""
        @livingrooms = @livingrooms.where(city: params[:city])
      end
    end
    if params[:capacity]
      @livingrooms = @livingrooms.where(capacity: params[:capacity].to_i..100)
    end
  end

  def show
  end

  def new
    @livingroom = Livingroom.new
  end

  def create
    @livingroom = current_user.livingrooms.build(livingroom_params)
    # @livingroom = Livingroom.new(livingroom_params)
    # @livingroom.user = current_user

    if @livingroom.save
      redirect_to livingroom_path(@livingroom)
      flash[:notice] = "You have successfully created a new workspace!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @livingroom.update(livingroom_params)
    if @livingroom.save
      redirect_to livingroom_path(@livingroom)
    else
      render :edit
    end
  end

  def destroy
    @livingroom.delete
    redirect_to livingrooms_path
  end


private

  # def set_user
  #   @user = User.find(params[:user_id])
  # end

  def set_livingroom
    @livingroom = Livingroom.find(params[:id])
  end

  def livingroom_params
      params.require(:livingroom).permit(:title, :capacity, :price, :address, :city, :description)
  end

end
