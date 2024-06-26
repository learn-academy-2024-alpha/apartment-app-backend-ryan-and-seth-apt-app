class ApartmentsController < ApplicationController
  def index
    apartments = Apartment.all
    render json: apartments
  end

  def create
    apartment = Apartment.create(apartment_params)
    if apartment.valid?
      render json: apartment
    else
      render json: apartment.errors, status: 422
    end
  end

  def update
    apartment = Apartment.find(params[:id])
    apartment.update(apartment_params)
    if apartment.valid?
      render json: apartment
    else
      render json: apartment.errors, status: 422
    end
  end

  def destroy
    apartment = Apartment.find(params[:id])
    apartment.destroy
  end

  private
  def apartment_params
    params.require(:apartment).permit(:street, :unit, :city, :state, :square_footage, :price, :bedrooms, :bathrooms, :pets, :image, :about, :user_id)
  end

end
