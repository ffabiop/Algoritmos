
  
def jump_search( arr , x , n )
     
    step = Math.sqrt(n)
     
    prev = 0
    while arr[[step, n].min-1] < x
        prev = step
        step += Math.sqrt(n)
        if prev >= n
            return -1
        end
    end
     
    while arr[prev] < x
        prev += 1
         
        if prev == [step, n].min
            return -1
        end
    end
     
    if arr[prev.to_i] == x
        return prev
    end
     
    return -1
end 

arr = [ 0, 1, 1, 2, 3, 5, 8, 13, 21,
    34, 55, 89, 144, 233, 377, 610 ]
x = 1
n = arr.length
 
index = jump_search(arr, x, n)
 
puts("Number  #{x} is at index #{index}")
 
# Este código é uma contribuição de "Sharad_Bhardwaj".