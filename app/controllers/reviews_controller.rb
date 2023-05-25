class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:create,:show, :edit, :update, :destroy]

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])

      respond_to do |format|
        format.html # Render the default show.html.erb template
        format.json { render json: @review }
      end
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create

    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant), notice: 'Review was successfully created.'
    else
      render :new , status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to review_path(@review), notice: 'Review was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to restaurant_path(@restaurant), notice: 'Review was successfully destroyed.'
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
