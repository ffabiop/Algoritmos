arr = [2, 3, 4, 10, 40]
x = 5
n = arr.length
 
existe = -1
for i in 0..n do
    if (arr[i] == x)
        existe = i
    end
end

if existe == -1
    puts "Element is not present in array"
else
    puts "Element is present at index"
end
