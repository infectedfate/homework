def price_list
  price_list1 = {'яблоки' => 100, 'груши' => 13, 'арбузы' => 20, 'картофель' => 15, 'алыча' => 22}
  price_list2 = {'яблоки' => 150,'груши' => 18,'ананасы' => 45, 'апельсины' => 30, 'киви' => 35}

  a = price_list1.merge(price_list2) do |key, val1, val2|
   val1 > val2 ? val1 : val2
  end
  p a
end
 price_list