Class TowerOfHanoi
  @height_of_tower = 0

  def initialize(height_of_tower)
    @height_of_tower = height_of_tower
  end

  def play
    print instructions
    render_current_board
    print "Enter Move >"
    input = gets.strip
    unless (input == "q" || win?)
    
    else
      render_current_board
      "You win!"
    end
  end 

  def render_current_board

  end

  def win?

  end

  def instructions
    puts "Welcome to Tower of Hanoi!\nInstructions:\nEnter where you'd like to move from and to\nin the format '1,3'. Enter 'q' to quit."
  end

  def check_input

  end
end
