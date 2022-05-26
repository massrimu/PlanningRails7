class TiffController < ApplicationController
  #before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @tiffs = Tiff.all
  end
def sort
end
  def create
    if request.post?
      tiff = Tiff.create(title: params[:title], author: params[:author], body: params[:body], value: params[:value])
      redirect_to "/tiff" #+ tiff.id.to_s
    end
  end
  def view
    @tiff = Tiff.find_by(id: params[:id])
  end

  def destroy
    tiff = Tiff.find_by(id: params[:id])
    tiff.destroy
    redirect_to "/tiff"
  end

  def edit
    if request.post?
     tiff = Tiff.find_by(id: params[:id])
     tiff.update(title: params[:title], author: params[:author], body: params[:body], value: params[:value])
     redirect_to "/tiff/view/" + tiff.id.to_s
   else
     @tiff = Tiff.find_by(id: params[:id])
  end
 end
end
