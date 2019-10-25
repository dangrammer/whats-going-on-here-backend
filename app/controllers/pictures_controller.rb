class PicturesController < ApplicationController

  def index
    pictures = Picture.all
    render json: pictures #, include: '**', status: 200
  end

  def create
    picture = Picture.create(picture_params)
    if picture.valid?
      render json: picture
    else
      flash[errors] = picture.errors.full_messages
    end
  end

  private

  def picture_params
    params.permit(:img_url)
  end

end
