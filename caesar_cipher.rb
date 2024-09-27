p 'insira o seu texto (sem acentuação e caracteres especiais): '
text = gets.chomp
p 'insira o numero inteiro para do salto: '
number = gets.chomp

def caesar_cipher(text, number)
  alphabet_hash = {
    ' ' => 0,
    'a' => 1,
    'b' => 2,
    'c' => 3,
    'd' => 4,
    'e' => 5,
    'f' => 6,
    'g' => 7,
    'h' => 8,
    'i' => 9,
    'j' => 10,
    'k' => 11,
    'l' => 12,
    'm' => 13,
    'n' => 14,
    'o' => 15,
    'p' => 16,
    'q' => 17,
    'r' => 18,
    's' => 19,
    't' => 20,
    'u' => 21,
    'v' => 22,
    'w' => 23,
    'x' => 24,
    'y' => 25,
    'z' => 26
  }
  split_text = text.split('')
  encode_text = ''
  letter_list = alphabet_hash.keys
  split_text.each do |letter|
    letter_value = alphabet_hash[letter]
    if !letter_value
      p "caracter invalido: #{letter}"
      break
    end
    if letter == ' '
      encode_text += letter
    else
      position = letter_value + number
      if position > 26
        position = position - 26
      end
      encode_text += letter_list[position]
    end
  end
  return encode_text
end

p caesar_cipher(text, number.to_i)