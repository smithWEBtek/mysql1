class CustomersController < ApplicationController

	def index
		@customers = Customer.all
	end

	def add_customers
		Customer.add_customers
		@customers = Customer.all
		redirect_to customers_path
	end

	def truncate_customers
		Customer.truncate_customers
		@customers = Customer.all
		render 'customers/index'
	end
end
