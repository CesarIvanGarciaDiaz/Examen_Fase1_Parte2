require_relative 'config/application'
require 'csv'
puts "*"*50
puts "Bienvenido a VLADINQUISIDOR Vuela ahora y recibe nuestras promociones"
puts "-"*50
puts "Ingrese 1 Para poder hacer reservaciones"
puts "Ingrese 2 Para poder entrar como Administrador"
respuesta= STDIN.gets.chomp
case respuesta.to_i
when 1
  Controlador.new(ARGV)
when 2
  puts "Escriba el usuario:"
  usuario= STDIN.gets.chomp
  puts "Escriba la contraseña"
  contraseña=STDIN.gets.chomp
  CSV.foreach("pass.csv") do |read|
    if usuario== read[0] and contraseña==read[1]
        Controlador_admin.new(ARGV)
      else
        puts "Contraseña o usuario incorrecto"
    end
end
  #Controlador_admin.new(ARGV)
end
