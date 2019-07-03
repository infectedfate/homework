arr = [1,3,5,76,4,3,26,6,7,8,98,7,7,6,5,2]

def max_2(arr)
  max_num1 = arr[0]
  max_num2 = arr[0]
  arr.each do |el|
    if el > max_num1
      max_num1 = el
      arr.each do |el|
        if el > max_num2 && el < max_num1
          max_num2 = el
        end
      end
    end
  end
  puts max_num1
  puts max_num2
end

max_2(arr)