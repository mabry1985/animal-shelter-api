class DogsController < ApplicationController

  def index
    @dogs = Dog.all
    json_response(@dogs)
  end

  def show
    @dog = Dog.find(params[:id])
    json_response(@dog)
  end

  def create
    @dog = Dog.create(dog_params)
    json_response(@dog)
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dog_params)
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def dog_params
    params.permit(:author, :content)
  end
end
