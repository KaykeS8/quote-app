class QuotesController < ApplicationController
  before_action :set_quote, only: %i[ show edit update destroy]

  def index
    @quotes = Quote.all
  end

  def show;end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.create(quote_params)
    return redirect_to quotes_path, notice: "Quote was successfuly created." if @quote.save
    render :new, status: :unprocessable_entity
  end

  def edit;end

  def update
    return redirect_to quotes_path, notice: "Quote was successfuly updated." if @quote.update(quote_params)
    render :edit, status: :unprocessable_entity
  end

  def destroy
    @quote.destroy
    redirect_to quotes_path, notice: "Quote was successfully destroyed."
  end

  private

  def set_quote
    @quote = Quote.find(params[:id])
  end

  def quote_params
    params.require(:quote).permit(:name)
  end
end