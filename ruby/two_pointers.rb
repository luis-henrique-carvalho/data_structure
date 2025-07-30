def reverse_words(s)
    chars = s.chars
    n = chars.length

    debugger

    start = 0

    while start < n
      finish = start

      while finish < n && chars[finish] != ' '
        finish += 1
      end

      # Inverte os caracteres entre start e finish - 1
      left = start
      right = finish - 1

      while left < right
        chars[left], chars[right] = chars[right], chars[left]
        left += 1
        right -= 1
      end

      # Move para o início da próxima palavra
      start = finish + 1
    end

    chars.join
end
