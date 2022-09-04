class Api::V1::UsersController < ApplicationController
	before_action :set_user, only: %i[show update destroy]

	def show
		render json: @user
	end

	def update
		if @user.update(user_params)
			render json: @user, status: :ok #http status code 200
		else
			render json: @user.errors, status: :unprocessable_entity
		end
	end

	def create
		@user = User.new(user_params)

		if @user.save
			render json: @user, status: :created # Http status code 201
		else
			render json: @user.errors, status: :unprocessable_entity # Http status code 422
		end
	end	

	def destroy
		@user.destroy
		head 204
	end

	private
	def user_params
		params.require(:user).permit(:email, :password)
	end

	def set_user
		@user = User.find(params[:id])
	end
end
