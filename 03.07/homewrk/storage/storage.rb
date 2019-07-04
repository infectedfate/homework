class Main

  attr_accessor :goods

  def initialize
    @goods = []
  end

  def menu
    loop do
      info
      puts 'Введите пункт меню:'
      choice = gets.to_i

      case choice
      when 1 then add_new_good
      when 2 then delete
      when 3 then update
      when 4 then total
      when 5 then show_all_goods
      when 6 then show_all_prices
      when 0 then break
      end
    end
  end

  def info
    puts '1. Добавить товар'
    puts '2. Удалить товар'
    puts '3. Обновить товар'
    puts '4. Показать сумму стоимости всех товаров'
    puts '5. Показать все товары'
    puts '6. Показать все цены'
    puts '0. Выход'
  end

  def get(key)
    arr = @goods.find { |e| e.include?(key) }
    arr[1]
  end

  def set(key, value)
    arr = @goods.find { |e| e.include?(key) }
    arr[1] = value
  end

  def keys
    res = []
    @goods.each { |e| res << e[1] }
    return res
  end

  def values
    res = []
    @goods.each { |e| res << e[0] }
    return res
  end

  def delete(value)
    @goods.delete_at(value)
  end
  
  def add_new_good
    puts "Введите название товара:"
    good = gets.to_sym
    puts "Введите количество товара:"
    number = gets.to_i
    puts "Введите цену товара:"
    price = gets.to_i
    @goods << [good, [number, price]]
  end

  def update
  end

  def total
  end

  def show_all_goods
    @goods.each_with_index do |el, idx| 
      puts "#{idx + 1} - #{el[0]}"
    end
  end

  def show_all_prices
    @goods.each do |el|
      puts "#{el[0]} - #{el[1][0]}"
    end 
  end
  
end

Main.new.menu