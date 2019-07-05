require_relative 'menu'
require_relative 'hash'

class Main

  attr_accessor :goods
  
  include Menu
  include MyHash

  def initialize
    @goods = []
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