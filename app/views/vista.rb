class TasksView

	def display_menu
		puts
		puts "*" * 60
		puts "\t\t\tBienvenido\t\t\t"
		puts "*" * 60
		puts "\t\tVAMONOS DE VIAJE !!!\t\t"
		puts "Comandos:\t\t\t Descripcion:"
		puts "1.Index \t\t\t\t #Muestra todos lo vuelos Disponibles"
		puts "2.Find \t\t\t\t #Has una reservacion"
		puts "3.Exit \t\t\t\t #Salir del programa"

		puts
	end

	def index(var)
		puts "*"*90
		puts "Los vuelos son los siguientes :"
		var.each do |t|
			puts "\t \t No Vuelo :#{t.no_Vuelo}"
			puts "Date:#{t.date_v} , Departs: #{t.departs}"
			puts "From: #{t.from_v}, To:#{t.to_v} ,Duration:#{t.duration}, Precio:#{t.precio}"
			puts "*"*60
		end
	end

	def find(var)
		puts "Los vuelos Disponibles son los siguientes:"
		var.each_with_index do |t, i|
			puts " No.#{i + 1} - No Vuelo :#{t.no_Vuelo} , Date:#{t.date_v} , Departs: #{t.departs}, From: #{t.from_v}, To:#{t.to_v} ,Duration:#{t.duration}, Boletos Disponibles:#{t.passangers}"
			puts "*"*50
			puts"Escoge tu vuelo:"
		end
	end

	def usuario(var)
		puts "*"*90
		puts "El vuelo seleccionado es el siguiente :"
		puts "\t \t No Vuelo :#{var.no_Vuelo}"
		puts "Date:#{var.date_v} , Departs: #{var.departs}"
		puts "From: #{var.from_v}, To:#{var.to_v} ,Duration:#{var.duration}, Precio:#{var.precio}"
		puts "*"*60
	end

	def usuario2(var)
		puts "*"*90
		puts "Los usuarios registrados son  :"
		var.each do |t|
			puts "\t \t Nombre :#{t.nombre}"
			puts "email:#{t.date_v} , Booking Id: #{t.booking_id}"
			puts "*"*60
		end
	end

	def error
		puts "INGRESE UN COMANDO VALIDO"
		display_menu
	end
end
