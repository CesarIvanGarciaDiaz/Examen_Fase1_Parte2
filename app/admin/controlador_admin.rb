class Controlador_admin
  def initialize(args)
    @args=args
    @view = Viewadmin.new
    execute
  end

  def index_flight
    @view.index_flight(Flight.all)
    execute
  end

  def index_booking
    @view.index_booking(Booking.all)
    execute
  end

  def create_flight(var1,var2,var3,var4,var5,var6,var7,var8)
    @view.create_flight(Flight.create(no_Vuelo: var1, date_v: var2 , departs: var3 , from_v: var4, to_v:var5 ,duration:var6 ,precio:var7 ,passangers:var8))
    execute
  end

  def create_booking(var1,var2,var3,var4)
    @view.create_flight(Booking.create(no_Vuelo: var1, from_b: var2 , to_b: var3 , date_b: var4))
    execute
  end

  def delete_flight(var1,var2)
    flight= Flight.find_by("#{var1}":+"#{var2}")
    @view.delete_flight(flight)
    flight.destroy
    execute
  end

  def delete_booking(var1,var2)
    booking = Booking.find_by("#{var1}":+"#{var2}")
    @view.delete_booking(booking)
    booking.destroy
    execute
  end

  def update_flight(var1,var2,var3,var4)
    flight = Flight.find_by("#{var1}":+"#{var2}")
    flight.update("#{var3}":+"#{var4}")
    @view.update_flight(flight)
    execute
  end

  def update_booking(var1,var2,var3,var4)
    booking = Booking.find_by("#{var1}":+"#{var2}")
    booking.update("#{var3}":+"#{var4}")
    @view.update_booking(booking)
    execute
  end

  def execute
    @view.display_menu
    puts "Que deseas Realizar"
    seleccion = STDIN.gets.chomp
    case seleccion.to_i
    when 1
      index_flight
    when 2
      index_booking
    when 3
      puts "Numero de Vuelo:"
      no_vuelo= STDIN.gets.chomp
      puts "Date:"
      date = STDIN.gets.chomp
      puts "Departs:"
      departs = STDIN.gets.chomp
      puts "From:"
      from = STDIN.gets.chomp
      puts "To:"
      to = STDIN.gets.chomp
      puts "Duracion:"
      duracion = STDIN.gets.chomp
      puts "Precio:"
      precio = STDIN.gets.chomp
      puts "Lugares Disponibles:"
      passangers = STDIN.gets.chomp
      create_flight(no_vuelo,date,departs,from,to,duracion,precio,passangers)
    when 4
      puts "Numero de vuelo:"
      no_vuelo= STDIN.gets.chomp
      puts "From:"
      from = STDIN.gets.chomp
      puts "To:"
      to = STDIN.gets.chomp
      puts "Date:"
      date= STDIN.gets.chomp
      create_booting(no_vuelo,from,to,date)
    when 5
      puts "Esta usted borrando un vuelo"
      puts "Se borrara el atributo igual a :"
      puts "Atributo:"
      atributo= STDIN.gets.chomp
      puts "con el Valor:"
      valor = STDIN.gets.chomp
    delete_flight(atributo,valor)
  when 6
      puts "Esta usted borrando una reservacion"
    puts "Se borrara el atributo igual a :"
      puts "Atributo:"
      atributo= STDIN.gets.chomp
      puts "con el Valor:"
      puts "Valor:"
      valor = STDIN.gets.chomp
    delete_booking(atributo,valor)
    when 7
        puts "Esta usted Actualizado vuelos"
      puts "****Buscar por****"
      puts "Atributo:"
      atributo= STDIN.gets.chomp
      puts "Igual a:"
      valor = STDIN.gets.chomp
      puts "****Actualizar****"
      puts "Atributo que se decea remplazar:"
      atributo2 = STDIN.gets.chomp
      puts "Valor a remplazar:"
      valor2= STDIN.gets.chomp
      update_flight(atributos,valor,atributo2,valor2)
    when 8
      puts "Esta usted Actualizado reservaciones"
      puts "****Buscar por****"
      puts "Atributo:"
      atributo= STDIN.gets.chomp
      puts "Igual a:"
      valor = STDIN.gets.chomp
      puts "****Actualizar****"
      puts "Atributo que se decea remplazar:"
      atributo2 = STDIN.gets.chomp
      puts "Valor a remplazar:"
      valor2= STDIN.gets.chomp
      update_booking(atributo,valor,atributo2,valor2)
    when 9
      exit
    end
  end
end
