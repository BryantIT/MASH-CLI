# frozen_string_literal: true

require 'colorize'

class Cli
  def self.interaction
    print ':/'
    input = gets.chomp

    if input == 'exit'
      exit
    elsif input.to_i < 1 || input.to_i > 12
      Special.alert
      Scraper.menu
      Splash.trailing
      interaction
    else
      Roster.roster(input.to_i)
      end
  end

  def self.run
    Splash.start
    Scraper.menu
    Splash.trailing
    interaction
   end
end
