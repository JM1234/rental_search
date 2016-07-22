class UsersController < ApplicationController
  def index	
		@user = User.find(current_user.id)	
		@user_rentals = @user.rentals
  end

	def show 
		@user = User.find(params[:id])	
		@user_rentals = @user.rentals
	end
end
