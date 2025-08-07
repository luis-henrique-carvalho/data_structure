def quicksort(array, depth = 0)
    indent = "  " * depth
    puts "#{indent}quicksort(#{array.inspect})"

    return array if array.length <= 1

    pivot = array[0]
    puts "#{indent}pivot: #{pivot}"

    left = array[1..].select { |x| x <= pivot }
    right = array[1..].select { |x| x > pivot }

    puts "#{indent}left: #{left.inspect}"
    puts "#{indent}right: #{right.inspect}"

    sorted_left = quicksort(left, depth + 1)
    sorted_right = quicksort(right, depth + 1)

    result = sorted_left + [pivot] + sorted_right
    puts "#{indent}result: #{result.inspect}"

    result
end

nums = [8, 3, 1, 7, 0, 10, 2]
sorted = quicksort(nums)
puts "Final sorted: #{sorted.inspect}"
