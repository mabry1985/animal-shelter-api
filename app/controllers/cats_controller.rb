class CatsController < ApplicationController

  def index
    @cats = Cat.all
    json_response(@cats)
  end

  def show
    @cat = Cat.find(params[:id])
    json_response(@cat)
  end

  def create
    @cat = Cat.create(cat_params)
    json_response(@cat)
  end

  def update
    @cat = Cat.find(params[:id])
    @cat.update(cat_params)
  end

  def destroy
    @cat = Cat.find(params[:id])
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
