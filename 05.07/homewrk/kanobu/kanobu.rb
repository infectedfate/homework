class Kanobu
  
  attr_accessor :rounds, :computer_wins, :human_wins
  def initialize  
    @rounds = 0
    @computer_wins = 0
    @human_wins = 0
  end

  def calc(human_choice, computer_choice)
    if human_choice == computer_choice
      puts "Friendship!"
    elsif human_choice == 0 && computer_choice == 1 ||
          human_choice == 1 && computer_choice == 2 ||
          human_choice == 2 && computer_choice == 0
          @human_wins + 1
          
    elsif human_choice == 0 && computer_choice == 2 ||
          human_choice == 1 && computer_choice == 0 ||
          human_choice == 2 && computer_choice == 1
          @computer_wins + 1
    end
  end

  def who_win
    if @human_wins < @computer_wins
      puts "You win!"
    else
      puts "Computer win!"
    end  
  end

  def game
    while @rounds < 3
      puts "Begin"
      puts "Choose your weapon: 0 - stone 1 - scissors 2 - paper"

      kanobu = ["stone", "scissors", "paper"]

      human_choice = gets.chomp.to_i
      puts "Your choose: " + kanobu[human_choice]

      computer_choice = rand(3)
      puts "Computer choose: " + kanobu[computer_choice]

      calc(human_choice, computer_choice)
      @rounds += 1
    end
    who_win
  end
end
