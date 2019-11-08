# frozen_string_literal: true

class Special
  def self.slowly
    yield.each_char { |c| putc c; $stdout.flush; sleep 0.10 }
  end

  def self.alert
    puts '                                  '.colorize(:yellow).on_red.blink
    puts '                                  '.colorize(:yellow).on_red.blink
    puts '                                  '.colorize(:yellow).on_red.blink
    puts '  Are you bucking for a section 8?'.colorize(:red).blink
    puts '                                  '.colorize(:yellow).on_red.blink
    puts '                                  '.colorize(:yellow).on_red.blink
    puts '                                  '.colorize(:yellow).on_red.blink
    sleep(5)
    system('cls') || system('clear')
  end

  def self.line
    puts ' --------------------'.colorize(:green)
  end

  def self.blank
    puts ''
  end

  def self.banner
    puts <<-'EOF'
 _______________________________
 _______________________________
 _______________________________
  __  __           _____ _    _
 |  \/  |   /\    / ____| |  | |
 | \  / |  /  \  | (___ | |__| |
 | |\/| | / /\ \  \___ \|  __  |
 | |  | |/ ____ \ ____) | |  | |
 |_|  |_/_/    \_\_____/|_|  |_|

 _______________________________

            YYYYY
            YYYYY
        YYYYYYYYYYYYY
        YYYYYYYYYYYYY
            YYYYY
            YYYYY
 _______________________________
   _  _    ___ ______ ______
  | || |  / _ \____  |____  |
  | || |_| | | |  / /    / /
  |__   _| | | | / /    / /
     | | | |_| |/ /    / /
     |_|  \___//_/    /_/
 _______________________________
 _______________________________
 _______________________________
    EOF
  end
end
