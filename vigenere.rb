# frozen_string_literal: true

class Vigenere
  def initialize
    @abc = ('A'..'Z').to_a
    @abc.insert(13, 'Ñ')
  end

  def encode(key, message)
    tokens = message.split(' ')
    tokens_encoded = []

    key_index = 0
    tokens.each do |token|
      tokens_encoded.push(cypher(key, token, key_index))
      key_index = token.length % key.length
    end

    message_tokens = []
    tokens_encoded.each do |token|
      message_tokens.push(find_abc_chars(token))
    end
    message_tokens.join(' ')
  end

  def cypher(key, token, key_index)
    encoded_values = []
    token.chars.each do |char|
      encoded_values.push(get_enconde_value(key, char, key_index))
      key_index = (key_index + 1) % key.length
    end
    encoded_values
  end

  def get_enconde_value(key, char, key_index)
    key_char_value = @abc.find_index(key[key_index])
    token_char_value = @abc.find_index(char)
    (key_char_value + token_char_value) % @abc.length
  end

  def find_abc_chars(char_indexes)
    token = ''
    char_indexes.each do |index|
      token += @abc[index]
    end
    token
  end

  def decode(key, message)
    puts "tu clave es: #{key}"
    puts "el mensaje a descifrar es: #{message}"
  end
end
