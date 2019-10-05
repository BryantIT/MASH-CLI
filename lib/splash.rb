class Splash < Special
  def self.start
    banner
    sleep(2)
    system('cls') || system('clear')
    blank
    slowly do
      ' -- M*A*S*H 4077 --'.center(5).colorize(:green)
    end
    blank
    slowly do
      ' Mobile Army Surgical Hospital'.colorize(:green)
    end
    blank
    slowly do
      ' Best Care Anywhere!'.colorize(:green)
    end
    blank
    line
    line
    line
    slowly do
      '    ATTENTION!'.colorize(:green)
    end
    blank
    slowly do
      '    ATTENTION!'.colorize(:green)
    end
    blank
    slowly do
      '  Will the following personnel please report for duty:'.colorize(:green)
    end
    blank
    line
  end

  def self.trailing
    line
    blank
    puts "type 'exit' to leave program"
    puts ' MENU: Please select a character to learn more:(1-12)'.colorize(:green).on_white.blink
    blank
  end

  def self.alert; end

  # def swamp
  #   puts 'Welcome to the swamp!'.colorize(:green)
  #   puts 'Pull up a seat and enjoy a drink.'.colorize(:green)
  #   sleep(2)
  #   blank
  #   blank
  #   puts 'M*A*S*H Martini Recipe'.colorize(:green)
  #   puts 'Step 1: Pour 6 jiggers of gin into a glass'.colorize(:green)
  #   puts 'Step 2: Drink it'.colorize(:green)
  #   puts 'Step 3: Stare at a picture of Lorenzo Schwartz, the inventor of vermouth.'.colorize(:green)
  #   sleep(3)
  #   system('cls') || system('clear')
  # end
end
