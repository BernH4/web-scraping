require 'httparty'
require 'nokogiri'
require 'pry'

class Scraper

  def initialize
    doc = HTTParty.get("https://www.sportscheck.com/wanderhosen/herren/")
    @html = Nokogiri::HTML(doc)
    binding.pry
  end

end

Scraper.new
