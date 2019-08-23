class QuotesController < ApplicationController

  def index
    @cats = Quote.all
    json_response(@cats)
  end

  def show
    @cat = Quote.find(params[:id])
    json_response(@cat)
  end

  def create
    @cat = Quote.create(cat_params)
    json_response(@cat)
  end

  def update
    @cat = Quote.find(params[:id])
    @cat.update(cat_params)
  end

  def destroy
    @cat = Quote.find(params[:id])
    @cat.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def cat_params
    params.permit(:author, :content)
  end
end
