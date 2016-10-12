class Viewadmin

	def display_menu
		puts
		puts "*" * 100
		puts "Bienvenido Administrador"
		puts "Comandos:\t\t\t Descripcion:"
		puts "1.-Muestra todos los vuelos"
		puts "2.-Muestra todas las reservaciones"
		puts "3.-Crea un nuevo vuelo"
		puts "4.-Crea una nueva reservacion"
		puts "5.-Borra un vuelo"
		puts "6.-Borra una reservacion"
		puts "7.-Actualiza lo que desees de vuelos"
		puts "8.-Actualiza lo que desees de reservaciones"
		puts "9.-Salir"
		puts
	end

	def index_flight(var)
		puts "*"*90
		puts "Los vuelos son los siguientes :"
		var.each do |t|
			puts "\t \t No Vuelo :#{t.no_Vuelo}"
			puts "Date:#{t.date_v} , Departs: #{t.departs}"
			puts "From: #{t.from_v}, To:#{t.to_v} ,Duration:#{t.duration}, Precio:#{t.precio}"
			puts "*"*60
		end
	end

	def index_booking(var)
		puts "*"*90
		puts "Las reservaciones son los siguientes :"
		var.each do |t|
			puts "\t \t No Vuelo :#{t.no_Vuelo}"
			puts "From: #{t.from_b}, To:#{t.to_b} , Date:#{t.date_b}"
			puts "*"*60
		end
	end

	def create_flight(var)
		puts "*"*90
		puts "Has creado correctamente la siguiente vuelo:"
		var.each do |t|
			puts "\t \t No Vuelo :#{var.no_Vuelo}"
			puts "Date:#{t.date_v} , Departs: #{t.departs}"
			puts "From: #{t.from_v}, To:#{t.to_v} ,Duration:#{t.duration}, Precio:#{t.precio}"
			puts "*"*60
		end
	end

	def create_booking(var)
		puts "*"*90
		puts "Las reservaciones son los siguientes :"
		var.each do |t|
			puts "\t \t No Vuelo :#{t.no_Vuelo}"
			puts "From: #{t.from}, To:#{t.to} , Date:#{t.date}"
			puts "*"*60
		end
	end

	def delete_flight(var)

		puts "*"*90
		puts "Has borrado el siguiente vuelo :"
		puts "\t \t No Vuelo :#{var.no_Vuelo}"
		puts "Date:#{var.date_v} , Departs: #{var.departs}"
		puts "From: #{var.from_v}, To:#{var.to_v} ,Duration:#{var.duration}, Precio:#{var.precio}"
		puts "*"*60
	end

	def delete_booking(var)
		puts "*"*90
		puts "Has borrado la siguiente reservacion:"
		puts "id : #{var.no_Vuelo}--from : #{var.from_b}--to: #{var.to_b} --date: #{var.date_b}"
		puts "*"*60
	end

	def update_flight(var)
		puts "*"*90
		puts "has actualizado del vuelo lo siguiente :"
		puts "\t \t No Vuelo :#{var.no_Vuelo}"
		puts "Date:#{var.date_v} , Departs: #{var.departs}"
		puts "From: #{var.from_v}, To:#{var.to_v} ,Duration:#{var.duration}, Precio:#{var.precio}"
		puts "*"*60
	end

	def update_booking(var)
		puts "*"*90
		puts "Has actualizado de la reservacion lo siguiente:"
		puts "id : #{var.no_Vuelo}--from : #{var.from_b}--to: #{var.to_b} --date: #{var.date_b}"
		puts "*"*60
	end
end
