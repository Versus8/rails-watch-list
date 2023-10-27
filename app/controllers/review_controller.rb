class ReviewController < ApplicationController
  before_action :set_list

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.list = @list
    @review.save
  end

  private

  def set_review
    @list = List.find(params[:list_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
