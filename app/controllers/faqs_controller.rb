class FaqsController < ApplicationController
  def index
  end

  def new
  end

  def create
  @faq = Faq.new(faq_params)
  @faq.save
  redirect_to @faq
end
private
def faq_params
  params.require(:faq).permit(:title, :text)
end


  end

  def show
     @faq = Faq.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
