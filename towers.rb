class TowerOfHanoi

  def initialize(height_of_tower)
    @first_stack = []
    @second_stack = []
    @third_stack = []
    @height_of_tower = height_of_tower
    create_board()
  end

  def play
    print instructions
    render_current_board
    play_moves()

  end 

  def play_moves()
    unless win?
      print "Enter Move >"
      input = gets.strip
      if (valid_input?(input))
        update_current_board(input)
        render_current_board
        play_moves()
      end
    else
      print "You win!"
    end
  end

  def render_current_board
    print "Current Board:"
    (0..@height_of_tower).reverse_each do |n|
      if !@first_stack[n].nil? 
        print "#{'o' * @first_stack[n]}" 
      end
      print "\t\t"
      if !@second_stack[n].nil? 
        print "#{'o' * @second_stack[n]}" 
      end
      print "\t\t"
      if !@third_stack[n].nil? 
        print "#{'o' * @third_stack[n]}" 
      end
      print "\n"
    end
    puts "1\t\t2\t\t3\t\t"
  end

  def update_current_board(input)
    moves = input.split(",")
    move_from = moves.first.to_i
    move_to = moves.last.to_i

    if (move_from == 1)
      disk_to_move = @first_stack.pop()
    elsif (move_from == 2)
      disk_to_move = @second_stack.pop()
    elsif (move_from == 3)
      disk_to_move = @third_stack.pop()
    end

    if (move_to == 1)
      @first_stack.push(disk_to_move)
    elsif (move_to == 2)
      @second_stack.push(disk_to_move)
    elsif (move_to == 3)
      @third_stack.push(disk_to_move)
    end
    # @current_board = [@first_stack, @second_stack, @third_stack]
    # print @current_board
    # elsif (moves.first.to)
    # disk_to_move = @current_board[moves.first.to_i - 1].pop()
    # @current_board[moves.first.to_i - 1].push(disk_to_move)
  end

  def create_board
    (1..@height_of_tower).reverse_each { |i| @first_stack.push(i) }
  end
  
  def win?
    @second_stack == [3,2,1] || @third_stack == [3,2,1]
  end

  def instructions
    puts "Welcome to Tower of Hanoi!\nInstructions:\nEnter where you'd like to move from and to\nin the format '1,3'. Enter 'q' to quit."
  end

  def valid_input?(input)
    validity = false
    input_array = input.split("")
    if (input == "q")
      puts "You quit!"
    elsif (!input_array[0].to_i.between?(1,3))
      puts "Invalid format. "
      play_moves()
    elsif (input_array[1] != ",")
      puts "Invalid format. "
      play_moves()
    elsif (!input_array[2].to_i.between?(1,3))
      print "Invalid format."
      play_moves()
    elsif (input_array.length == 4)
      puts "Invalid format. "
      play_moves()
    else
      validity = true
    end
    return validity
  end
end
