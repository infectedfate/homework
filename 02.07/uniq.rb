init_arr = [1,1,1,2,2,2,3,6,7,8,8,7,7,6,5,2]
uniq_arr = []

init_arr.map do |el|
    if !uniq_arr.include?(el)
        uniq_arr << el
        end
    end
puts uniq_arr
