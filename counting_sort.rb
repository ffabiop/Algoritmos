def counting_sort(arr,min=0,max=10)
    max = arr.max 
    min = arr.min
	
	if min>max
      return "invalid range"
    end
    
  	n=max-min+1
	count=Array.new(n,0)
	len=arr.length
	output=Array.new(len)
  
  	for i in 0...len
		count[arr[i]-min]+=1
	end
	
  	for i in 1...n
		count[i]+=count[i-1]
	end
		
	
	for i in 0...len
		output[count[arr[i]-min]-1]=arr[i]
		count[arr[i]-min]-=1
	end
	
	for i in 0...len
		arr[i]=output[i]
	end
	
	return arr
	
end
arr=[-5, -10, 0, -3, 8, 5, -1, 10]
puts counting_sort(arr)