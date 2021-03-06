# class ReviewsController < ApplicationController
#   def new
#     @review = Review.new # needed to instantiate the form_for
#   end

#   def create
#     @review = Review.new(review_params)
#     @restaurant = Restaurant.find(params[:restaurant_id])
#     @review.restaurant = @restaurant
#     if @review.save
#       redirect_to restaurant_path(@restaurant)
#     else
#       render :new
#     end
#   end

#   private

#   def review_params
#     params.require(:review).permit(:content, :rating)
#   end
# end

class ReviewsController < ApplicationController
  def new
     @review = Review.new # needed to instantiate the form_for
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render "restaurants/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
