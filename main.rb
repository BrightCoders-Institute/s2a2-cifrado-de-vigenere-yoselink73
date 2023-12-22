# frozen_string_literal: true

require_relative 'vigenere'

puts 'Escribe tu clave:'
key = $stdin.gets.chomp.upcase
puts 'Escribe tu mensaje:'
message = $stdin.gets.chomp.upcase

puts "Tu clave es: #{key}"
puts "Tu mensaje es: #{message}"

puts '¿Que deseas hacer?'
puts '1.- Codificar un mensaje'
puts '2.- Decodificar un mensaje'
selection = $stdin.gets.chomp.to_i

cipher = Vigenere.new
if selection == 1
  puts 'Codificando'

  message_endcoded = cipher.encode(key, message)
  puts "Mensaje codificado: #{message_endcoded}"
elsif selection == 2
  puts 'Decodificando'

  message_decoded = cipher.decode(key, message)
  puts "Mensaje decodificado: #{message_decoded}"
else
  puts 'Elije una opcion valida'
end
