class PetsController < ApplicationController

	def randomize
		Pet.all.each do |p| 
			custid = (0..Customer.all.count).to_a.sample
			p.customer_id = custid
			p.save
		end
		@customers = Customer.all
		render 'customers/index'
	end
end
