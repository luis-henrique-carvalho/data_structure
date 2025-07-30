# Dado uma string s e um número inteiro k, escreva uma função que
# retorne o tamanho da maior substring que contém
# no máximo k caracteres distintos
require "debug"
# @param {String} s
# @param {Integer} k
# @return {Integer}
def largest_substring_with_k_distinct(s, k)
    l = 0
    counter = Hash.new(0)
    max_len = 0

    s.each_char.with_index do |char, r|
        counter[char] += 1

        while counter.size > k
            counter[s[l]] -= 1

            binding.break

            counter.delete(s[l]) if counter[s[l]] == 0
            l += 1
        end

        max_len = [max_len, r - l + 1].max
    end

    max_len
end

puts largest_substring_with_k_distinct("eceba", 2)  # => 3
