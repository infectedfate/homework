require_relative 'menu'
require_relative 'hash'

class Storage

  attr_accessor :store
  
  include Menu

  def initialize
    init_db unless File.exist?('db.txt')
    @store = MyHash.new([])
    read_file
  end

  def read_file
    File.readlines('db.txt').each do |l|
      a = l.split(' ')
      @store[a[0].to_sym]= MyHash.new([[:quantity, a[1].to_i], [:price, a[2].to_i]])
    end
  end

  def save_in_file
    File.open('db.txt', 'w') do |f|
      @store.each do |k, v|
        f.puts "#{k} #{v[:quantity]} #{v[:price]}\n"
      end
    end
  end

  def init_db
    File.open('db.txt', 'w').close
  end

  def show_all_items
    @store.each do |name, attrs|
      puts name.to_s +
          'Цена' + attrs[:price].to_s + "\n" +
          'Количество' + attrs[:quantity].to_s + "\n" +
          'Общая цена' + total_price(name).to_s + "\n"
    end
    puts 'Количество товара на складе: ' + total_items_quantity.to_s
    puts 'Цена всех товаров на складе: ' + total_items_price.to_s
  end

  def add_new_item
    puts 'Введите название товара:'
    name = gets.chomp.to_sym
    puts 'Введите цену:'
    price = gets.to_i
    puts 'Введите количество:'
    quantity = gets.to_i
    add(name, MyHash.new([[:price, price], [:quantity, quantity]]))
  end

  def delete_item
    puts 'Введите наименование удаляемого продукта'
    @store.delete(gets.chomp.to_sym)
  end

  def update_item
    puts 'Введите наименование продукта'
    name = gets.chomp.to_sym
    puts "Введите изменяемый аттрибут:\n
    1) Цена\n
    2) Количество\n"
    input = gets.to_i
    case input
    when 1
      puts "Введите цену:"
      price = gets.to_i
      @store[name][:price]= price
    when 2
      puts "Введите количество"
      quantity = gets.to_i
      @store[name][:quantity]= quantity
    end
  end

  def add(name, attributes)
    @store[name]= attributes
    save_in_file
  end

  def delete(name)
    @store.delete(name)
    save_in_file
  end

  def update(name, attribute)
    @store[name]= attribute
    save_in_file
  end

  def total_items_quantity
    @store.map do |el|
      el[1][:quantity]
    end.inject(&:+)
  end

  def total_items_price
    @store.map do |el|
      total_price(el[0])
    end.inject(&:+)
  end

  def total_price(name)
    @store[name][:quantity] * @store[name][:price]
  end

  Storage.new.run
end
