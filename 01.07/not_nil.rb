arr =  [nil,123,nil,"test", :foo, :bar]

arr.delete_if { |item| item.nil? }

print arr