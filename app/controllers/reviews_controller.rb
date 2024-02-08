class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.save
  end

  def new
    @reivew = Review.new
  end

  def index
    @reviews = Review.all
  end
  
  private

  def review_params
    params.require(:review).permit(:restaurant_id, :content, :rating)
  end
end
