# frozen_string_literal: true

puts 'que deseas hacer?'
puts '1.- codificar un mensaje'
puts '2.- decodificar un mensaje'
selection = $stdin.gets.chomp.to_i

if selection == 1
  puts 'codificando'
elsif selection == 2
  puts 'decodificando'
else
  puts 'Elije una opcion valida'
end
