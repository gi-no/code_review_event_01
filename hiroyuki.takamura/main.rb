require 'open-uri'
require 'nokogiri'

html = open('https://paiza.jp/challenges/ranks/S') do |page|
  page.read
end

contents = Nokogiri::HTML.parse(html)

puts contents.title
