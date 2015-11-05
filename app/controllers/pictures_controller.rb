class PicturesController < ApplicationController
  before_action :set_livingroom
  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.livingroom_id = @livingroom.id
    if @picture.save
      redirect_to livingroom_path(@livingroom)
    else
      render :new
    end
  end


  private

  def set_livingroom
    @livingroom = Livingroom.find(params[:livingroom_id])
  end

  def picture_params
    params.require(:picture).permit(:picture)
  end

end
