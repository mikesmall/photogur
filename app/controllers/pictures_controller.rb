class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end#index

  def show
    @picture = Picture.find(params[:id])
  end#show

  def new
    @picture = Picture.new
  end#new

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      # if the picture gets saved, generate a get request to "/pictures" (the index)
      redirect_to "/pictures"
    else
      # otherwise render new.html.erb
      render :new
    end#if/else 
  end#create


  def picture_params
    { title: params[:picture][:title], artist: params[:picture][:artist], url: params[:picture][:url] }
  end

end#PictureController class
