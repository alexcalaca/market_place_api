class Api::V1::UsersController < ApplicationController
	def show
		render json: User.find(params[:id])
	end

	def create
		@user = User.new(user_params)

		if @user.save
			render json: @user, status: :created # Http status code 201
		else
			render json: @user.errors, status: :unprocessable_entity # Http status code 422
		end
	end

	private
	def user_params
		params.require(:user).permit(:email, :password)
	end
end
