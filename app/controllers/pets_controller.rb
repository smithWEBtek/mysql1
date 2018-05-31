class PetsController < ApplicationController

	def randomize
		Pet.all.each do |p| 
			custid = (2..Customer.all.count).to_a.sample
			p.customer_id = custid
			p.save
		end
		@customers = Customer.all
		render 'customers/index'
	end
 
	def add_pets
		Pet.add_pets
		@customers = Customer.all
		render 'customers/index'
	end
 
	def truncate_pets
		Pet.truncate_pets
		@customers = Customer.all
		render 'customers/index'
	end

end
