namespace :db do
	desc "Fill database with sample data"
	task :populate => :environment do
		Rake::Task['db:reset'].invoke
		Accomodation.create!(:property_type => "House",
			:nightly_rate => 30,
			:accomodates => 1,
			:accomodation_type => "Room",
			:adress_line => "Antonigasse 23",
			:country => "Austria",
			:city => "Vienna",
			:zip_code => "12345",
			:contact_email => "something@something.com",
			:contact_phone => "38512346789",
			:contact_phone2 => "38512346789",
			:number_of_bathrooms => "2",
			:number_of_bedrooms => "3",
			:number_of_bedrooms => "3",
			:number_of_beds => "4"
			)

		99.times do |n|
			property_type = ["House", "Villa", "Appartment"].sample
			accomodation_type = ["Private Room", "Shared room"].sample
			nightly_rate = rand(100) + 10
			accomodates = rand(10) + 1			
			adress_line = Faker::Address.street_address
			country = Faker::Address.uk_country
			city = Faker::Address.city
			zip_code = Faker::Address.zip_code
			contact_email = Faker::Internet.email
			contact_phone = 1000000 + rand(1000000)
			contact_phone2 = 1000000 + rand(1000000)
			number_of_beds = accomodates
			number_of_bedrooms = accomodates / 2
			number_of_bathrooms = accomodates / 2

			Accomodation.create!(
				:property_type => property_type,
				:accomodation_type => accomodation_type,
				:nightly_rate => nightly_rate,
				:accomodates => accomodates,
				:adress_line => adress_line,
				:country => country,
				:city => city,
				:zip_code => zip_code,
				:contact_email => contact_email,
				:contact_phone => contact_phone,
				:contact_phone2 => contact_phone2,
				:number_of_beds => number_of_beds,
				:number_of_bedrooms => number_of_bedrooms,
				:number_of_bathrooms => number_of_bathrooms
				)
		end
	end
end