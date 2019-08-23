class V1::DogsController < ApplicationController

  def index
    @dogs = Dog.all
    json_response(@dogs)
  end

  def show
    @dog = Dog.find(params[:id])
    json_response(@dog)
  end

  def create
    @dog = Dog.create!(dog_params)
    json_response(@dog, :create)
  end

  def update
    @dog = Dog.find(params[:id])
    if @dog.update!(dog_params)
    render status: 200, json: {
      message: "This dog has been updated successfully."
    }
    end
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
  end

  def random
   @dog = Dog.random
   json_response(@dog)
  end

  def search_breed
    @breed = params[:breed]
    @breeds = Dog.search_breed(@breed)
    json_response(@breeds)
  end

  private

  def dog_params
    params.permit(:author, :content)
  end
end
