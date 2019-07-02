init_arr = [1,3,5,76,4,3,26,6,7,8,98,7,7,6,5,2]

uniq_arr = []

init_arr.each do |el|
    if !uniq_arr.include?(el)
        uniq_arr << el
    end
end

puts uniq_arr