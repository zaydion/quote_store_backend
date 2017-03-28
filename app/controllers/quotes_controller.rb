class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

  def index
    @quotes = Quote.all
    render json: @quotes, status: :ok
  end

  def show
    render json: @quote, status: :ok
  end

  def new
  end

  def create
    @quote = Quote.create(quote_params)
    render json: @quote, status: :created
  end

  def edit
  end

  def update
    @quote.update(quote_params)
    render json: @quote, status: :ok
  end

  def destroy
    @quote.destroy
    head :no_content, status: :ok
  end

  private
  def quote_params
    params.require(:quote).permit!
  end

  def set_quote
    @quote = Quote.find(params[:id])
  end
end
