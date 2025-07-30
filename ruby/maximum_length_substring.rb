# @param {String} s
# @return {Integer}
require "debug"

def maximum_length_substring(s)
    l, r = 0, 0
    max_len = 1
    counter = Hash.new(0)

    counter[s[0]] = 1

    puts "Início do processamento"
    puts "String: #{s}"
    puts "-" * 40

    while r < s.length - 1
      r += 1
      counter[s[r]] += 1

      puts "→ Expandindo janela: r = #{r}, s[r] = '#{s[r]}'"
      puts "Contador: #{counter}"
      puts "Janela atual: s[#{l}..#{r}] = '#{s[l..r]}'"

      while counter[s[r]] == 3
        puts "⚠️  '#{s[r]}' apareceu 3 vezes! Encolhendo pela esquerda..."
        counter[s[l]] -= 1
        puts "⬅️  Reduzindo contador de '#{s[l]}', novo valor: #{counter[s[l]]}"
        l += 1
        puts "Novo l = #{l}"
      end

      max_len = [max_len, r - l + 1].max
      puts "✅ Tamanho máximo até agora: #{max_len}"
      puts "-" * 40
    end

    puts "Fim do processamento"
    puts "Maior substring válida: #{max_len}"
    max_len
  end

  # Exemplo de uso:
  maximum_length_substring("bcbbbcba")
