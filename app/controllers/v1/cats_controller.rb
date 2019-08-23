class V1::CatsController < ApplicationController

  def index
    @cats = Cat.all
    json_response(@cats)
  end

  def show
    @cat = Cat.find(params[:id])
    json_response(@cat)
  end

  def create
    @cat = Cat.create!(cat_params)
    json_response(@cat, :created)
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update!(cat_params)
    render status: 200, json: {
      message: "This cat has been updated successfully."
    }
    end
  end

  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy
  end

  def random
    @cat = Cat.random
    json_response(@cat)
  end

  def search_breed
    @breed = params[:breed]
    @breeds = Cat.search_breed(@breed)
    json_response(@breeds)
  end

  private

  def cat_params
    params.permit(:author, :content)
  end
end
