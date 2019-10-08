require 'open-uri'
require 'nokogiri'
require 'colorize'

class Scraper
  DOC = Nokogiri::HTML(open('https://en.wikipedia.org/wiki/List_of_M*A*S*H_characters#Main_characters'))
  # binding.pry

  def self.menu
    menu_names = DOC.css('.toclevel-1').css('.tocsection-2').text.strip.gsub("\n", '').split('2.').drop(1).map { |str| str.split(' ')[1..-1].join(' ') }
    menu_names.each.with_index(1) do |name, index|
      puts "  #{index}. #{name}".colorize(:green)
    end
  end
  # name:.text.gsub("[edit]","")
  # bio:.text.gsub(/["\"","\n"]/,"").gsub(/\[\d\]/,"")

  def self.hawkeye
    name = DOC.css('#mw-content-text > div > h3:nth-child(12)').text.gsub('[edit]', '')
    bio1 = DOC.css('#mw-content-text > div > p:nth-child(14)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio2 = DOC.css('#mw-content-text > div > p:nth-child(15)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio3 = DOC.css('#mw-content-text > div > p:nth-child(16)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio4 = DOC.css('#mw-content-text > div > p:nth-child(17)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio5 = DOC.css('#mw-content-text > div > p:nth-child(18)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio6 = DOC.css('#mw-content-text > div > p:nth-child(19)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio = [bio1, bio2, bio3, bio4, bio5, bio6]
    puts "     #{name}".colorize(:green)
    puts '     ----------'.colorize(:green)
    sleep(3)
    bio.each do |p|
      counter = 0
      if counter < bio.length
        puts p.to_s.to_s.colorize(:green)
        puts ''
        puts ''
        puts 'press enter for next page'
        counter += 1
        page = gets.chomp
      else counter > bio.size
      end
    end
    Scraper.menu
    Splash.trailing
    Cli.interaction
  end

  def self.trapper
    name = DOC.css('#mw-content-text > div > h3:nth-child(21)').text.gsub('[edit]', '')
    bio1 = DOC.css('#mw-content-text > div > p:nth-child(23)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio2 = DOC.css('#mw-content-text > div > p:nth-child(24)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio3 = DOC.css('#mw-content-text > div > p:nth-child(25)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio4 = DOC.css('#mw-content-text > div > p:nth-child(26)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio = bio1, bio2, bio3, bio4
    puts "     #{name}".colorize(:green)
    puts '     ----------'.colorize(:green)
    sleep(3)
    bio.each do |p|
      counter = 0
      if counter < bio.length
        puts p.to_s.to_s.colorize(:green)
        puts ''
        puts ''
        puts 'press enter for next page'
        counter += 1
        page = gets.chomp
      else counter > bio.size
      end
    end
    Scraper.menu
    Splash.trailing
    Cli.interaction
  end

  def self.bj
    name = DOC.css('#mw-content-text > div > h3:nth-child(28)').text.gsub('[edit]', '')
    bio1 = DOC.css('#mw-content-text > div > p:nth-child(30)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio2 = DOC.css('#mw-content-text > div > p:nth-child(31)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio3 = DOC.css('#mw-content-text > div > p:nth-child(32)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio4 = DOC.css('#mw-content-text > div > p:nth-child(33)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio5 = DOC.css('#mw-content-text > div > p:nth-child(34)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio = [bio1, bio2, bio3, bio4, bio5]
    puts "     #{name}".colorize(:green)
    puts '     ----------'.colorize(:green)
    sleep(3)
    bio.each do |p|
      counter = 0
      if counter < bio.length
        puts p.to_s.to_s.colorize(:green)
        puts ''
        puts ''
        puts 'press enter for next page'
        counter += 1
        page = gets.chomp
      else counter > bio.size
      end
    end
    Scraper.menu
    Splash.trailing
    Cli.interaction
  end

  def self.henry
    name = DOC.css('#mw-content-text > div > h3:nth-child(36)').text.gsub('[edit]', '')
    bio1 = DOC.css('#mw-content-text > div > p:nth-child(38)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio2 = DOC.css('#mw-content-text > div > p:nth-child(39)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio3 = DOC.css('#mw-content-text > div > p:nth-child(40)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio4 = DOC.css('#mw-content-text > div > p:nth-child(41)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio = [bio1, bio2, bio3, bio4]
    puts "     #{name}".colorize(:green)
    puts '     ----------'.colorize(:green)
    sleep(3)
    bio.each do |p|
      counter = 0
      if counter < bio.length
        puts p.to_s.to_s.colorize(:green)
        puts ''
        puts ''
        puts 'press enter for next page'
        counter += 1
        page = gets.chomp
      else counter > bio.size
      end
    end
    Scraper.menu
    Splash.trailing
    Cli.interaction
  end

  def self.sherman
    name = DOC.css('#mw-content-text > div > h3:nth-child(43)').text.gsub('[edit]', '')
    bio1 = DOC.css('#mw-content-text > div > p:nth-child(45)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio2 = DOC.css('#mw-content-text > div > p:nth-child(46)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio3 = DOC.css('#mw-content-text > div > p:nth-child(47)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio4 = DOC.css('#mw-content-text > div > p:nth-child(48)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio5 = DOC.css('#mw-content-text > div > p:nth-child(49)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio = [bio1, bio2, bio3, bio4, bio5]
    puts "     #{name}".colorize(:green)
    puts '     ----------'.colorize(:green)
    sleep(3)
    bio.each do |p|
      counter = 0
      if counter < bio.length
        puts p.to_s.to_s.colorize(:green)
        puts ''
        puts ''
        puts 'press enter for next page'
        counter += 1
        page = gets.chomp
      else counter > bio.size
      end
    end
    Scraper.menu
    Splash.trailing
    Cli.interaction
  end

  def self.frank
    name = DOC.css('#mw-content-text > div > h3:nth-child(51)').text.gsub('[edit]', '')
    bio1 = DOC.css('#mw-content-text > div > p:nth-child(54)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio2 = DOC.css('#mw-content-text > div > p:nth-child(55)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio3 = DOC.css('#mw-content-text > div > p:nth-child(56)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio4 = DOC.css('#mw-content-text > div > p:nth-child(57)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio5 = DOC.css('#mw-content-text > div > p:nth-child(58)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio6 = DOC.css('#mw-content-text > div > p:nth-child(59)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio7 = DOC.css('#mw-content-text > div > p:nth-child(60)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio = [bio1, bio2, bio3, bio4, bio5, bio6, bio7]
    puts "     #{name}".colorize(:green)
    puts '     ----------'.colorize(:green)
    sleep(3)
    bio.each do |p|
      counter = 0
      if counter < bio.length
        puts p.to_s.to_s.colorize(:green)
        puts ''
        puts ''
        puts 'press enter for next page'
        counter += 1
        page = gets.chomp
      else counter > bio.size
      end
    end
    Scraper.menu
    Splash.trailing
    Cli.interaction
  end

  def self.margaret
    name = DOC.css('#mw-content-text > div > h3:nth-child(62)').text.gsub('[edit]', '')
    bio1 = DOC.css('#mw-content-text > div > p:nth-child(64)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio2 = DOC.css('#mw-content-text > div > p:nth-child(65)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio3 = DOC.css('#mw-content-text > div > p:nth-child(66)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio4 = DOC.css('#mw-content-text > div > p:nth-child(67)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio5 = DOC.css('#mw-content-text > div > p:nth-child(68)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio6 = DOC.css('#mw-content-text > div > p:nth-child(69)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio7 = DOC.css('#mw-content-text > div > p:nth-child(70)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio = [bio1, bio2, bio3, bio4, bio5, bio6, bio7]
    puts "     #{name}".colorize(:green)
    puts '     ----------'.colorize(:green)
    sleep(3)
    bio.each do |p|
      counter = 0
      if counter < bio.length
        puts p.to_s.to_s.colorize(:green)
        puts ''
        puts ''
        puts 'press enter for next page'
        counter += 1
        page = gets.chomp
      else counter > bio.size
      end
    end
    Scraper.menu
    Splash.trailing
    Cli.interaction
  end

  def self.charles
    name = DOC.css('#mw-content-text > div > h3:nth-child(72)').text.gsub('[edit]', '')
    bio1 = DOC.css('#mw-content-text > div > p:nth-child(74)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio2 = DOC.css('#mw-content-text > div > p:nth-child(75)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio3 = DOC.css('#mw-content-text > div > p:nth-child(76)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio4 = DOC.css('#mw-content-text > div > p:nth-child(77)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio = [bio1, bio2, bio3, bio4]
    puts "     #{name}".colorize(:green)
    puts '     ----------'.colorize(:green)
    sleep(3)
    bio.each do |p|
      counter = 0
      if counter < bio.length
        puts p.to_s.to_s.colorize(:green)
        puts ''
        puts ''
        puts 'press enter for next page'
        counter += 1
        page = gets.chomp
      else counter > bio.size
      end
    end
    Scraper.menu
    Splash.trailing
    Cli.interaction
  end

  def self.radar
    name = DOC.css('#mw-content-text > div > h3:nth-child(79)').text.gsub('[edit]', '')
    bio1 = DOC.css('#mw-content-text > div > p:nth-child(81)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio2 = DOC.css('#mw-content-text > div > p:nth-child(82)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio3 = DOC.css('#mw-content-text > div > p:nth-child(83)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio4 = DOC.css('#mw-content-text > div > p:nth-child(84)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio5 = DOC.css('#mw-content-text > div > p:nth-child(85)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio6 = DOC.css('#mw-content-text > div > p:nth-child(86)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio7 = DOC.css('#mw-content-text > div > p:nth-child(87)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio8 = DOC.css('#mw-content-text > div > p:nth-child(88)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio = [bio1, bio2, bio3, bio4, bio5, bio6, bio7, bio8]
    puts "     #{name}".colorize(:green)
    puts '     ----------'.colorize(:green)
    sleep(3)
    bio.each do |p|
      counter = 0
      if counter < bio.length
        puts p.to_s.to_s.colorize(:green)
        puts ''
        puts ''
        puts 'press enter for next page'
        counter += 1
        page = gets.chomp
      else counter > bio.size
      end
    end
    Scraper.menu
    Splash.trailing
    Cli.interaction
  end

  def self.mulcahy
    name = DOC.css('#mw-content-text > div > h3:nth-child(90)').text.gsub('[edit]', '')
    bio1 = DOC.css('#mw-content-text > div > p:nth-child(92)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio2 = DOC.css('#mw-content-text > div > p:nth-child(93)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio3 = DOC.css('#mw-content-text > div > p:nth-child(94)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio4 = DOC.css('#mw-content-text > div > p:nth-child(95)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio5 = DOC.css('#mw-content-text > div > p:nth-child(96)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio6 = DOC.css('#mw-content-text > div > p:nth-child(97)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio7 = DOC.css('#mw-content-text > div > p:nth-child(98)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio = [bio1, bio2, bio3, bio4, bio5, bio6, bio7]
    puts "     #{name}".colorize(:green)
    puts '     ----------'.colorize(:green)
    sleep(3)
    bio.each do |p|
      counter = 0
      if counter < bio.length
        puts p.to_s.to_s.colorize(:green)
        puts ''
        puts ''
        puts 'press enter for next page'
        counter += 1
        page = gets.chomp
      else counter > bio.size
      end
    end
    Scraper.menu
    Splash.trailing
    Cli.interaction
  end

  def self.klinger
    name = DOC.css('#mw-content-text > div > h3:nth-child(100)').text.gsub('[edit]', '')
    bio1 = DOC.css('#mw-content-text > div > p:nth-child(102)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio2 = DOC.css('#mw-content-text > div > p:nth-child(103)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio3 = DOC.css('#mw-content-text > div > p:nth-child(104)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio4 = DOC.css('#mw-content-text > div > p:nth-child(105)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio5 = DOC.css('#mw-content-text > div > p:nth-child(106)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio6 = DOC.css('#mw-content-text > div > p:nth-child(107)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '')
    bio = [bio1, bio2, bio3, bio4, bio5, bio6]
    puts "     #{name}".colorize(:green)
    puts '     ----------'.colorize(:green)
    sleep(3)
    bio.each do |p|
      counter = 0
      if counter < bio.length
        puts p.to_s.to_s.colorize(:green)
        puts ''
        puts ''
        puts 'press enter for next page'
        counter += 1
        page = gets.chomp
      else counter > bio.size
      end
    end
    Scraper.menu
    Splash.trailing
    Cli.interaction
  end

  def self.duke
    name = DOC.css('#mw-content-text > div > h3:nth-child(108)').text.gsub('[edit]', '')
    bio1 = DOC.css('#mw-content-text > div > p:nth-child(110)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '').gsub(/\bcitation needed\b/, "")
    bio2 = DOC.css('#mw-content-text > div > p:nth-child(111)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '').gsub(/\bcitation needed\b/, "")
    bio3 = DOC.css('#mw-content-text > div > p:nth-child(112)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '').gsub(/\bcitation needed\b/, "")
    bio4 = DOC.css('#mw-content-text > div > p:nth-child(113)').text.gsub(/["\"","\n"]/, '').gsub(/\[\d\]/, '').gsub(/\bcitation needed\b/, "")
    bio = [bio1, bio2, bio3, bio4]
    puts "     #{name}".colorize(:green)
    puts '     ----------'.colorize(:green)
    sleep(3)
    bio.each do |p|
      counter = 0
      if counter < bio.length
        puts p.to_s.to_s.colorize(:green)
        puts ''
        puts ''
        puts 'press enter for next page'
        counter += 1
        page = gets.chomp
      else counter > bio.size
      end
    end
    Scraper.menu
    Splash.trailing
    Cli.interaction
  end
end
