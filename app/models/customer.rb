class Customer < ApplicationRecord
	has_many :pets
 
	def self.add_customers
		customer_list = [
			['Kirstin', 'kmacbrearty0@fotki.com', 'Jelisavac'],
			['Tobi', 'tdowyer1@lulu.com', 'Castlepollard'],
			['Bobbee', 'bmcrill2@surveymonkey.com', 'Māymay'],
			['Kara', 'kurion3@nyu.edu', 'Kinnula'],
			['Robinet', 'rrippin4@youtube.com', 'Yulin'],
			['Ros', 'rroberson5@arizona.edu', 'Belene'],
			['Shelley', 'sscimonelli6@istockphoto.com', 'Jabon'],
			['Salim', 'sdalessio7@storify.com', 'Luxor'],
			['Connie', 'cmyhan8@gravatar.com', 'Tonoshō'],
			['Lorrie', 'lheningham9@nbcnews.com', 'Ishioka'],
			['Dolley', 'daddersona@com.com', 'Pentéli'],
			['Cherish', 'cgregoryb@purevolume.com', 'Jinshan'],
			['Jayme', 'jbickersc@berkeley.edu', 'Concepcion'],
			['Cammi', 'cbaserd@parallels.com', 'Independencia'],
			['Lock', 'laudreye@pbs.org', 'Independencia'],
			['Karisa', 'kwoodf@europa.eu', 'Zgłobień'],
			['Brand', 'bdumbrillg@redcross.org', 'Longsheng'],
			['Rip', 'rmcavaddyh@dion.ne.jp', 'Saguday'],
			['Mal', 'mswiffini@dell.com', 'Sabanalarga'],
			['Viola', 'vmcdonoghj@diigo.com', 'Granadero Baigorria'],
			['Shir', 'smardyk@theglobeandmail.com', 'Alegria'],
			['My', 'mkneebonel@google.it', 'Luofang'],
			['Gwenni', 'gsollimem@princeton.edu', 'Марино'],
			['Isidor', 'ishawn@mashable.com', 'Aasiaat'],
			['Tudor', 'tlaurenzo@sciencedirect.com', 'Bauan'],
			['Nathalia', 'norrillp@chicagotribune.com', 'San Pedro Ayampuc'],
			['Ava', 'aduxbarryq@sohu.com', 'Patpata Segundo'],
			['Baily', 'bdavidover@etsy.com', 'Meruge'],
			['Odella', 'obenadettes@cdbaby.com', 'Zhulan'],
			['Neala', 'nrizzillot@reverbnation.com', 'Āqchah'],
			['Nataline', 'ndyshartu@hugedomains.com', 'Saint-Brieuc'],
			['Nowell', 'nrobinettv@cdbaby.com', 'Eshan'],
			['Abdel', 'awenzelw@latimes.com', 'Ciego de Ávila'],
			['Hermy', 'hrickmanx@phpbb.com', 'Smolenskaya'],
			['Ileana', 'igopsilly@webs.com', 'Radoboj'],
			['Giraldo', 'gbanaszewskiz@google.co.jp', 'Ishikawa'],
			['Noby', 'nwaind10@desdev.cn', 'Fatualam'],
			['Dominik', 'daireton11@ehow.com', 'San José del Guaviare'],
			['Borden', 'bheinssen12@topsy.com', 'Lens'],
			['Nancey', 'nbaroux13@rakuten.co.jp', 'Santa Bárbara']
		]
	
		customer_list.each do |item|
			sql = "insert into customers (name, email, city) values ('#{item[0]}', '#{item[1]}', '#{item[2]}')"
 			ActiveRecord::Base.connection.exec_query(sql)
		end
	end

	def self.truncate_customers
		ActiveRecord::Base.connection.exec_query("TRUNCATE TABLE customers;")
	end
end
