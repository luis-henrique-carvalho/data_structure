def bubble(arr)
    n = arr.length

    for i in 0...(n - 1)
        for j in 0...(n - i - 1)
            if arr[j] > arr[j + 1]
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
            end
        end
    end

    arr
end

bubble([5, 3, 8, 4, 2])
