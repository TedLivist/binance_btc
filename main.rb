require 'nokogiri'
require 'httparty'
require 'byebug'

def scraper
  url = 'https://api.binance.com/api/v3/ticker/price?symbol=BTCBUSD'
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)
  byebug
end

scraper