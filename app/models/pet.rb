class Pet < ApplicationRecord
	belongs_to :customer

  def self.add_pets
			pet_list = [
			'Brolga crane', 
			'Bear, sloth', 
			'Ovenbird', 
			'Pademelon, red-legged', 
			'Nilgai', 
			'Black-fronted bulbul', 
			'White-necked raven', 
			'Dabchick', 
			'Marten, american', 
			'Sun gazer', 
			'Bat, asian false vampire', 
			'Gonolek, burchell''s', 
			'Woodpecker, downy', 
			'Squirrel, golden-mantled ground', 
			'River wallaby', 
			'Lourie, grey', 
			'South American sea lion', 
			'Squirrel, eurasian red', 
			'Owl, white-browed', 
			'Finch, common melba', 
			'Suricate', 
			'Pine squirrel', 
			'Brush-tailed phascogale', 
			'Gull, pacific', 
			'Seal, harbor', 
			'Lapwing (unidentified)', 
			'Ringtail', 
			'Otter, brazilian', 
			'Flamingo, chilean', 
			'Eastern indigo snake', 
			'Rabbit, eastern cottontail', 
			'Fowl, helmeted guinea', 
			'Marine iguana', 
			'Vulture, black', 
			'Raven, cape', 
			'Sandpiper, spotted wood', 
			'Sally lightfoot crab', 
			'Dove, laughing', 
			'Bear', 
			'Possum, common brushtail', 
		]
		pet_list.each do |pet_name|
			sql = "insert into pets (name) values ('#{pet_name}')"
 			ActiveRecord::Base.connection.exec_query(sql)
		end
	end

	def self.truncate_pets
		ActiveRecord::Base.connection.exec_query("TRUNCATE TABLE pets;")
	end
	
end
