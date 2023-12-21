# frozen_string_literal: true

require_relative 'vigenere'

puts 'que deseas hacer?'
puts '1.- codificar un mensaje'
puts '2.- decodificar un mensaje'
selection = $stdin.gets.chomp.to_i

cipher = Vigenere.new
if selection == 1
  puts 'codificando'
  puts 'escribe una clave:'
  key = $stdin.gets.chomp
  puts 'escribe tu mensaje:'
  message = $stdin.gets.chomp

  cipher.encode(key, message)
elsif selection == 2
  puts 'decodificando'
  puts 'escribe tu clave'
  key = $stdin.gets.chomp
  puts 'escribe tu mensaje cifrado'
  message = $stdin.gets.chomp

  cipher.decode(key, message)
else
  puts 'Elije una opcion valida'
end
