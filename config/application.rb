require 'active_record'
require 'sqlite3'
require 'yaml'
require_relative '../app/models/modelo_flight'
require_relative '../app/models/modelo_booking'
require_relative '../app/models/modelo_usuarios'
require_relative '../app/controllers/controlador'
require_relative '../app/views/vista'

#-----------------------------------
#require_relative '../app/admin/modelo_flight_admin'
#require_relative '../app/admin/modelo_booking_admin'
#require_relative '../app/admin/modelo_usuarios'
require_relative '../app/admin/controlador_admin'
require_relative '../app/admin/vista_admin'
configuration = YAML::load_file(File.join(__dir__, 'database.yml'))
ActiveRecord::Base.establish_connection(configuration['development'])
