def caesar_cipher(string, number)
  alphabet_downcase = ('a'..'z').to_a
  alphabet_upcase = ('A'..'Z').to_a
  changed_string = []
  number = number.to_i
  string.chars.each do |c|
    if alphabet_downcase.include?(c)
      if alphabet_downcase.index(c) + number > 26
        a = alphabet_downcase.index(c) + number - 26
      else
        a = alphabet_downcase.index(c) + number
      end
      changed_string << alphabet_downcase[a]
    elsif alphabet_upcase.include?(c)
      if alphabet_upcase.index(c) + number > 26
        a = alphabet_upcase.index(c) + number - 26
      else
        a = alphabet_upcase.index(c) + number
      end
      changed_string << alphabet_upcase[a]
    else
      changed_string << c
    end
  end
  changed_string.join("")
end

puts ("Please enter your sentence")
sentence = gets.chomp
puts ("Please enter the shift factor")
shift_factor = gets.chomp
puts caesar_cipher(sentence, shift_factor)