class TowerOfHanoi
  @height_of_tower = 0


  def initialize(height_of_tower)
    @height_of_tower = height_of_tower
    create_current_board
    input = 1,3
    update_current_board(input)
  end

  def play
    print instructions
    render_current_board
    print "Enter Move >"
    input = check_input(gets.strip)
    print input
    unless (input == "q" || win?)
        print "You win!"
      else
        update_current_board(input)
        render_current_board        
    end
  end 

  def render_current_board

  end

  def update_current_board(input)
    input[0u]
    print input.class
  end

  def create_current_board
    new_tower = []
    # @current_board = Array.new(@height_of_tower, 0)
    # puts "#{@current_board}"
      (0..2).each do |n|
        if (n==0)
          (@height_of_tower).downto(1).each do |i|
            new_tower << i
            i-=1
          end
          # puts "#{@current_board.class}"
          @current_board = []
             @current_board.push(new_tower)
        else
           @current_board << 0
        end
    end
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