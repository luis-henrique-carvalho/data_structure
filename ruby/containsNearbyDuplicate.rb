require "debug"

# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
    r,l = 0,0
    count = Hash.new(0)
    max = 0

    count[nums[0]] = 1

    while r < nums.length - 1
        count[nums[r]] += 1
        r += 1

        if count[nums[r]] > 1
            binding.break
            count[nums[l]] -= 1
            l+=1
        end
    end

    max = [max, r - l + 1].max

    if (max == k)
        true
    else
        false
    end
end

puts contains_nearby_duplicate([1,2,3,1], 3)
