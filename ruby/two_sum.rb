# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    l = 0

    while l < nums.length - 1
      r = l + 1

      while r < nums.length
        if nums[l] + nums[r] == target
          return [l, r]
        end

        r += 1
      end

      l += 1
    end
  end

two_sum([3,2,4], 6)
