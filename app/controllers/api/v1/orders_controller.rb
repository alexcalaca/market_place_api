class Api::V1::OrdersController < ApplicationController
	def index
		render json: OrderSerializer.new(current_user.orders).serializable_hash
	end
end
