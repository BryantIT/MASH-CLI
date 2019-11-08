# frozen_string_literal: true

class Roster
  def self.roster(input)
    if
      input == 1
      Scraper.hawkeye
    elsif
      input == 2
      Scraper.trapper
    elsif
      input == 3
      Scraper.bj
    elsif
      input == 4
      Scraper.henry
    elsif
      input == 5
      Scraper.sherman
    elsif
      input == 6
      Scraper.frank
    elsif
      input == 7
      Scraper.margaret
    elsif
      input == 8
      Scraper.charles
    elsif
      input == 9
      Scraper.radar
    elsif
      input == 10
      Scraper.mulcahy
    elsif
      input == 11
      Scraper.klinger
    else
      input == 12
      Scraper.duke
    end
  end
end
