class Chess

  def initialize
    @corner = " "
    @letters = ("A".."H").to_a.join
    @numbers = (1..8).to_a
    @black_cells = "X"
    @white_cells = "O"
    @row = (@black_cells + @white_cells)*4
  end

  def draw
    puts @corner + @letters + @corner
      @numbers.each do |i|
        puts "#{i} #{@row} #{i}" 
        @row = @row.reverse
      end
    puts @corner + @letters + @corner
  end
end