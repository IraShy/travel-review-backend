class ReviewsController < ApplicationController
  before_action :find_review, only: [:show, :update, :destroy]

  def index
    reviews = Review.all
    render json: reviews
  end

  def show 
      render json: @review
    end 

    def create 
      review = Review.new(review_params)
      if(review.save)
        render json: "added a new review", status: :created
      else
        render json: {error: review.errors.full_messages}, status: :unprocessable_entity
      end
    end 

    def update 
      if @review.update(review_params)
        render status: :no_content
      else
        render json: {error: @review.errors.full_messages}, status: :unprocessable_entity
      end
    end 

    def destroy
      @review.delete
      render status: :no_content
    end 

  private 

  def review_params 
    params.require(:review).permit(:title, :content, :country, :year)
  end 

  def find_review 
    @review = Review.find(params[:id])
  end 
end
