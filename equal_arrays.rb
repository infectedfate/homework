def equal(arr1, arr2)
  return false if arr1.length != arr2.length
  arr1.each_with_index do |el, idx|
    return false if el != arr2[idx]
  end
  true
end
