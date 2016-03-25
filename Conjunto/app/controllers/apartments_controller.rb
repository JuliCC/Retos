class ApartmentsController < ApplicationController

	def index
		@tower = Tower.find(params[:tower_id])
		@apartments = @tower.apartments
	end

	def new
		@tower = Tower.find(params[:tower_id])
		@apartment = @tower.apartments.new
	end

	def create
		@tower = Tower.find(params[:tower_id])
		@apartment = @tower.apartments.new(apartment_params)
		@apartment.save
		redirect_to tower_apartments_path
	end

	def edit
		@tower = Tower.find(params[:tower_id])
		@apartment = @tower.apartments.find(params[:id])
	end

	def show
		@tower = Tower.find(params[:tower_id])
		@apartment = @tower.apartment.find(params[:id])
		@apartment_nuevo = Apartment.new
	end

	def update
		@tower = Tower.find(params[:tower_id])
		@apartment = @tower.apartment.find(params[:id])
		@apartment.update(apartment_params)
		redirect_to tower_apartments_path
	end

	def destroy
		@tower = Tower.find(params[:tower_id])
		@apartment = @tower.apartment.find(params[:id])
		@apartment.destroy
		redirect_to tower_apartments_path
	end

	def apartment_params
		params.require(:apartment).permit(:name, :tower_id, :floor)
	end

end
 