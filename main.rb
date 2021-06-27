require 'nokogiri'
require 'byebug'
require 'open-uri'

def scraper
  url = "https://api.binance.com/api/v3/ticker/price?symbol=BTCBUSD"
  parsed_item = Nokogiri::HTML(URI.open(url))
  my_num = parsed_item.text[29..-3]
  puts my_num.to_f
end

scraper