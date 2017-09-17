class TowerOfHanoi

  def initialize(height_of_tower)
    @current_board = []
    @height_of_tower = height_of_tower
    create_board()
    # update_current_board(input)
  end

  def play
    print instructions
    render_current_board
    print "Enter Move >"
    # input = check_input(gets.strip)
    input = gets.strip
    print input
    unless (input == "q" || win?)
        print "You win!"
      else
        update_current_board(input)
        render_current_board        
    end
  end 

  def render_current_board
    puts "Current Board:"
    @current_board.each do |stack|
      stack.reverse_each { |n| puts "#{"o" * n}\t\t" }
    end
    puts "1\t\t2\t\t3\t\t"
  end

  def update_current_board(input)
    moves = input.split(",")
    move_from = @current_board[moves.first.to_i].pop()
    move_to = @current_board.push(move_from)
  end

  def create_board
      (1..3).each do |n|
        stack = []
        if (n==1)
          (1..@height_of_tower).reverse_each { |i| stack.push(i) }
          @current_board.push(stack)
        else
          @current_board.push([])
        end
    end
  end
  
  def win?
    @current_board.each { |b| }
  end

  def instructions
    puts "Welcome to Tower of Hanoi!\nInstructions:\nEnter where you'd like to move from and to\nin the format '1,3'. Enter 'q' to quit."
  end

  def check_input(input)
    # input.format == %i,%i
  end
end







  # def create_current_board(heightOfTower)
  #   height_of_tower = heightOfTower
  #   new_tower = []
  #   current_board = []
  #   current_board = Array.new(height_of_tower, 0)

  #   (height_of_tower).downto(0).each do |i|
  #   # (1..height_of_tower).each do |i|
  #     # print "#{i}first"
  #     new_tower << i
  #     i-=1
  #     # puts "#{i}last"
  #   end
  #   current_board[0] = new_tower
  #   # (0..height_of_tower).each do |n|
  #   #     if (n == 1) 
          
  #   #     end
  #   # end
  #    puts "#{current_board}"
  # end

  # create_current_board(3)