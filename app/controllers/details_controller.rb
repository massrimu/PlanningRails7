class DetailsController < ApplicationController
  def index
     @details = Detail.all
  end

  def show
    @detail = Detail.find(params[:id])

  end
  def destroy
      detail = Detail.find(params[:id])
      detail.destroy
      redirect_to "/details"
  end
  def edit
   @detail = Detail.find(params[:id])
end
def update
   detail = Detail.find(params[:id])
   detail.update(detail_params)

   redirect_to "/details"
end

  def new
  end


  def create
    detail = Detail.new(detail_params)
    detail.save
    redirect_to "/details"
end
private
def detail_params
    params.require(:detail).permit(:title, :body)
end

end
