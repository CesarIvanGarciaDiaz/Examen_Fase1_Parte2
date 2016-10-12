require 'csv'
CSV.foreach("flights.csv") do |row|
    Flight.create(no_Vuelo:row[0],date:row[1],departs:row[2],from:row[3],to:row[4],duration:row[5],precio:row[6],passangers:row[7])

end
