require_relative 'helpers'

class Casino
  include Helpers
  
  attr_accessor :player, :bet, :rate, :money

  def initialize
    @roulette = (0..36).to_a
    @player = ""
    @money = 100
    @bet = 0
    @rate = 0
  end

  def twist
    @roulette[rand(@roulette.size)]
  end

  def greeting
    puts "Ваше имя:"
    @player = gets.chomp.to_s
    puts "Приветствуем Вас #{@player} в игре Рулетка!"
  end

  def start
    greeting
    doing_bet
  end

  def doing_bet
    if have_money?
      puts "Делайте Ваши ставки. У Вас #{@money}$"
      @bet = gets.to_i
      if enought_money?
        @money -= @bet
      else
        puts "У Вас недостаточно денег :("
        doing_bet 
      end
      puts "На какое число ставка? Введите число от 0 до 36"
      @rate = gets.to_i
      if rate_in_range?
        game
      else
        puts "Такого числа нет"
        return_money
        doing_bet
      end
    else
      puts "У вас нет денег."
    end
  end

  def game
    puts "Крутим рулетку!"
    result = twist
    puts "На рулетке выпало: #{result}"
    if @rate == result
      @money = @bet * 35
    else
      puts "Ставка не сыграла. Сыграем еще? Да/Нет"
      answer = gets.chomp.downcase
      case answer
      when "да" then doing_bet
      when "нет" then exit
      end
    end
  end

  Casino.new.start
end

