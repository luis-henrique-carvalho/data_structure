# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
     new_array = []
     hash = {}
     count = 0

     nums.each do |i|
        if hash[i]
            count += 1
        else
            hash[i] = 1

            new_array << i
        end
    end

    puts new_array
    puts "count: #{count}"

    new_array
end

remove_duplicates([0,0,1,1,1,2,2,3,3,4])
