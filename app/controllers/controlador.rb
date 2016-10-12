class Controlador
  def initialize(args)
    @args=args
    @view = TasksView.new
    execute
  end

  def index
    @view.index(Flight.all)
  end

  def find (var1)
    consulta=Flight.where(from_v:"#{var1[0]}",to_v:"#{var1[1]}",date_v:"#{var1[2]}")
    @view.find(consulta)
    reservacion(consulta)

  end

  def reservacion(consulta)
    escoger= STDIN.gets.chomp
    lol=(escoger.to_i)-1
    x=consulta[lol]
    novuelobo=x.no_Vuelo
    frombo=x.from_v
    tobo=x.to_v
    datebo=x.date_v
    precio=x.precio
    booking_create=Booking.create(no_Vuelo: novuelobo, from_b: frombo , to_b: tobo , date_b: datebo)
    usuario(x.passangers,x.id,x.no_Vuelo,booking_create.id,x,precio)

  end

  def usuario(var_pass,var_id,var_vuelo,booking_id,x,precio)
    puts "cuantos boletos quiere"
    boletos= STDIN.gets.chomp
    boletosf=boletos.to_i
    user = Flight.find_by(id: var_id)
    user.update(passangers: var_pass-boletosf)
    boletosf.times do |i|
      puts"*"*50
      puts "\t\tPERSONA NUMERO #{i+1}"
      puts "*"*50
      @view.usuario(x)
      puts "Ingresa tu nombre :"
      nombre= STDIN.gets.chomp
      puts "email:"
      email= STDIN.gets.chomp
      Usuario.create(nombre: nombre, email: email , num_vuelo: var_vuelo,id_booking:booking_id)
      puts "*"*30
      puts "reservacion correcta"
      puts "*"*30
    end
    costof=(precio.to_i * boletosf)
    puts "El costo total es de #{costof}"
    puts "Y tu ID de reservacion es la siguiente #{booking_id}"
  end

  def execute
    @view.display_menu
    puts "Que deseas Realizar"
    seleccion = STDIN.gets.chomp
    case seleccion.to_i
    when 1
      index
    when 2
      puts "Has tu reservacion llenando los siguientes datos "
      puts "From:"
      from = STDIN.gets.chomp
      puts "To:"
      to = STDIN.gets.chomp
      puts "Date:"
      date = STDIN.gets.chomp
      find([from,to,date])
    when 3
      exit
    else
      @view.error
    end
  end
end
