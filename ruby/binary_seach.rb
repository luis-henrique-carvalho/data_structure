def binary_seach(nums, n)
    lo = 0
    hi = nums.length
    steps = 0

    while lo < hi
        steps += 1
        mid = ((lo + hi) / 2)

        if nums[mid] == n
            return mid
        elsif nums[mid] < n
            lo = mid + 1
        else
             hi = mid
        end
    end
end

puts binary_seach([1,2,3,4,5,6,7,8,9], 6)
