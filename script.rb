def caesar_cipher(string, factor)
  result = ""

  string.each_char do |letter|

    letter_shifted_ascii = letter.ord + factor

    if (letter.match?(/[a-zA-Z]/))

      if ((65..90).include?(letter_shifted_ascii) || (97..122).include?(letter_shifted_ascii))

        result += letter_shifted_ascii.chr
      
      else

        if (letter.ord <= 90)

          result += (64 + (letter_shifted_ascii - 90)).chr

        else

          result += (96 + (letter_shifted_ascii - 122)).chr

        end

      end

    else

      result += letter

    end

  end

  result

end

puts "Enter a string:"
string = gets.chomp

puts "Enter a shift factor:"
shift_factor = gets.chomp.to_i

puts "Result:"
puts caesar_cipher(string, shift_factor)
