class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
    @most_recent_pictures = Picture.most_recent_five
    @older_than_one_month = Picture.older_than_one_month
    @pictures_created_in_year = Picture.pictures_created_in_year
  end#index

  def show
    @picture = Picture.find(params[:id])
    @comment = @picture.comments
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
  end#picture_params

  def edit
    @picture = Picture.find(params[:id])
  end#edit

  def update
    @picture = Picture.find(params[:id])
    # use the same picture_params method that we used in create
    if @picture.update_attributes(picture_params)
      redirect_to "/pictures/#{@picture.id}"
    else
      render :edit
    end#if/else
  end#update

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to "/pictures"
  end#destroy

end#PictureController class
