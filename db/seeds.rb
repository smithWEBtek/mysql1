# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Customer.create(name: 'max', email: 'max@abc.com', city: 'NYC')
Customer.create(name: 'alice', email: 'alice@abc.com', city: 'Toledo')
Customer.create(name: 'bill', email: 'bill@abc.com', city: 'Atlanta')
Customer.create(name: 'ted', email: 'ted@abc.com', city: 'LA')
Customer.create(name: 'fred', email: 'fred@abc.com', city: 'Boston')