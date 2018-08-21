require 'open-uri'

html = open('https://paiza.jp/challenges/ranks/S') do |page|
  page.read
end

puts html
