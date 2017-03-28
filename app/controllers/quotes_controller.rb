class QuotesController < ApplicationController
  def index
    @quotes = Quote.all
    render json: @quotes, status: :ok
  end

  def show
    @quote = Quote.find(params[:id])
    render json: @quote, status: :ok
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.create(quote_params)
    render json: @quote, status: :created
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def quote_params
    require(:quote).permit(:title, :body, :price, :size)
  end
end
