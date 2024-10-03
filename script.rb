def caesar_cipher(string, factor)
  result = ''
  normalized_factor = factor % 26

  string.each_char do |letter|

    if letter.match?(/[a-z]/)

      result += (((letter.ord - 'a'.ord + normalized_factor) % 26) + 'a'.ord).chr

    elsif letter.match?(/[A-Z]/)

      result += (((letter.ord - 'A'.ord + normalized_factor) % 26) + 'A'.ord).chr

    else

      result += letter

    end

  end

  result

end
