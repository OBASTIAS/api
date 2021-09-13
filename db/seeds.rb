# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

fecha1 = "01-01-2021".to_date
fecha2 = "31-12-2021".to_date

fechas = (fecha1..fecha2).to_a

valor_inicial = 10000
valor_final = 30000

valores = (valor_inicial..valor_final).to_a


fechas.each do |fecha|
    Uf.create(fecha: fecha, value: valores.sample)
end