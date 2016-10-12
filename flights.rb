require 'csv'
require 'faker'
require 'date'
require 'as-duration'
#instale gem as-duration
class TaskWriter
	def initialize(file_name)
		@file = file_name
	end

	def create_csv
		CSV.open(@file,"w") do |csv|
			50.times do
				csv << create_flights
			end
		end
		"File Created"
	end

	def create_flights

	r=rand(1...8)
			no_Vuelo=Faker::Number.number(5)
			date=Faker::Date.between(Date.new(2015,1,1),Date.new(2016,1,1))
			departs=Faker::Time.forward(23, :morning)
			from=Faker::Address.country
		  to=Faker::Address.country
			duration="0#{r}:00:00"
			precio=Faker::Number.number(6)
			passangers="#{r}"
			[no_Vuelo,date,departs,from,to,duration,precio,passangers]
	end
end

	TaskWriter.new('flights.csv').create_csv
