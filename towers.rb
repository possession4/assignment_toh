class TowerOfHanoi
  @@height_of_tower = 0
  @current_board << [0,0,0]

  def initialize(height_of_tower)
    @@height_of_tower = height_of_tower
    update_current_board()
  end

  def play
    print instructions
    render_current_board
    print "Enter Move >"
    input = check_input(gets.strip)
    unless (input == "q" || win?)
        render_current_board
        print "You win!"
      else
        
    end
  end 

  def render_current_board

  end

  def update_current_board
    
  end

  def win?
    @current_board.each do |b|
      
    end
  end

  def instructions
    puts "Welcome to Tower of Hanoi!\nInstructions:\nEnter where you'd like to move from and to\nin the format '1,3'. Enter 'q' to quit."
  end

  def check_input(input)
    #  input.format == %i,%i
  end
end
