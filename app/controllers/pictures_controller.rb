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
    render text: "Received POST request to '/pictures' with the data URL: #{params}"
  end#create

end
