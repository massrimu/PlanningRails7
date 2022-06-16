class TiffController < ApplicationController
  #before_action :authenticate_user!
  respond_to :html, :xml, :json
  #load_and_authorize_resource

  def index
    @tiffs = Tiff.order(:sort).all
  end
def sort
end
  def create
    if request.post?
      tiff = Tiff.create(title: params[:title], author: params[:author], body: params[:body], value: params[:value])
      redirect_to "/tiff/index" #+ tiff.id.to_s
    end
  end
  def view
    @tiff = Tiff.find_by(id: params[:id])
  end

  def destroy
    tiff = Tiff.find_by(id: params[:id])
    tiff.destroy
    redirect_to "/tiff/index"
  end
  def upvote
	@tiff = Tiff.find(params[:id])
  @tiff.upvote_by current_user
  redirect_to "/tiff/index"

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
