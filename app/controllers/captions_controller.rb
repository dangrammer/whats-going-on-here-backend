class CaptionsController < ApplicationController

  def index
    captions = Caption.all
    render json: captions #, include: '**', status: ok
  end

  def create
    caption = Caption.create(caption_params)
    if caption.valid?
      render json: caption
    else
      flash[:errors] = caption.errors.full_messages
    end
  end

  def update
    caption = Caption.find(params[:id])
    caption.update(caption_params)
    if caption.valid?
      render json: caption
    else
      flash[errors] = caption.errors.full_messages
    end
  end


  private

  def caption_params
    params.permit(:content, :likes, :picture_id)
  end

end
