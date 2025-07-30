# @param {String} s
# @return {Integer}
def first_uniq_char(s)
    c = {}

    s.each_char.with_index do |char, index|
        if !c[char]
            c[char] = [index, 1]
        else
            c[char] = [index, c[char][1] += 1]
        end
    end

    c.each do |_i, value|
        return value[0] if value[1] == 1
    end

    -1
end
