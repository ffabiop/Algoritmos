def bubble_sort(arr) 
    (arr.size-2).downto(0) do |i| 
      (0..i).each do |j| 
        arr[j], arr[j+1] = arr[j+1], arr[j] if arr[j] > arr[j+1] 
      end 
    end 
    return arr 
end

arr = [32,8,1,3,12,34,35,46,91,108]


puts bubble_sort(arr)