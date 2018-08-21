require 'open-uri'
require 'nokogiri'

html = open('https://paiza.jp/challenges/ranks/s/info') do |page|
  page.read
end

contents = Nokogiri::HTML.parse(html)

File.open('s.txt', 'w') do |f|
  contents.css('.problem-box').each do |element|
    title = element.at_css('.problem-box__header__title').inner_text.strip
    expect_time_for_answer = element.at_css('.problem-box__header__note').inner_text.gsub(/\n/, ' ').gsub(/\s+/, ' ')
    answer_info_summary = element.at_css('.problem-box__data').inner_text.gsub(/\n/, ' ').gsub(/\s+/, ' ')

    f.puts "#{title} #{expect_time_for_answer} #{answer_info_summary}"
  end
end

