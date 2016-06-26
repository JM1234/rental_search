class RentalsController < ApplicationController
  before_action :set_rental, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

  def index
    @rentals = Rental.all
  end

  def show
  end

  def new
    @rental = current_user.rentals.build
  end

  def edit
  end

  def create
    @rental = current_user.rentals.build(rental_params)

    respond_to do |format|
      if @rental.save
        format.html { redirect_to @rental, notice: 'Rental was successfully created.' }
        format.json { render :show, status: :created, location: @rental }
      else
        format.html { render :new }
        format.json { render json: @rental.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @rental.update(rental_params)
        format.html { redirect_to @rental, notice: 'Rental was successfully updated.' }
        format.json { render :show, status: :ok, location: @rental }
      else
        format.html { render :edit }
        format.json { render json: @rental.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @rental.destroy
    respond_to do |format|
      format.html { redirect_to rentals_url, notice: 'Rental was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_rental
      @rental = Rental.find(params[:id])
    end

    def rental_params
      params.require(:rental).permit(:price, :property_type, :no_of_bedrooms, :bedroom_type, :no_of_bathrooms, :bathroom_type, :deposit, :maximum_no_of_people_per_room, :address, :contact_number, :owner, 
:image)
    end
end
