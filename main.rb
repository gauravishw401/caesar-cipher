


def caesar_cipher(string, shift_value) 
  alphabets = ('a' .. 'z').to_a
  punctuations = ['!', '?', ',',]


  arr_of_words = string.downcase.split(' ')
  crypted_str_arr = []

  arr_of_words.each do |word| 
    arr_of_letters = word.split('')
    iteration = 0
    
    arr_of_letters.each_with_index do |letter, idx|
      if punctuations.include?(letter)
        crypted_str_arr.push(arr_of_letters.join(''))
      else
      index = alphabets.index(letter)
      shift = index + shift_value
      replacable_index = shift >= 26 ? shift - 26 : shift
      
      arr_of_letters[idx].replace(alphabets[replacable_index]) 
      iteration = iteration + 1
      if iteration == arr_of_letters.size
        crypted_str_arr.push(arr_of_letters.join(''))
      end
      end
    end

    
  end

  alphabets_upcase = ('A' .. 'Z').to_a
  str_characters =  string.chars
  crypted_str_char = crypted_str_arr.join(' ').chars 

   str_characters.each_with_index do |element, idx|
    if alphabets_upcase.include?(element)
      letter = crypted_str_char.fetch(idx)
      letter_upcase = letter.upcase
      crypted_str_char[idx].replace(letter_upcase)
    end
  end
  
p crypted_str_char.join('')
end

caesar_cipher('yo!', 10)




