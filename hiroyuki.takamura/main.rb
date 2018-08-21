require 'open-uri'
require 'nokogiri'

urls = %w[
  https://paiza.jp/challenges/ranks/s/info
  https://paiza.jp/challenges/ranks/a/info
  https://paiza.jp/challenges/ranks/b/info
  https://paiza.jp/challenges/ranks/c/info
  https://paiza.jp/challenges/ranks/d/info
]

urls.each do |url|
  html = open(url) do |page|
    page.read
  end

  contents = Nokogiri::HTML.parse(html)

  File.open('result.txt', 'w') do |f|
    contents.css('.problem-box').each do |element|
      title = element.at_css('.problem-box__header__title').inner_text.strip
      expect_time_for_answer = element.at_css('.problem-box__header__note').inner_text.gsub(/\n/, ' ').gsub(/\s+/, ' ')
      answer_info_summary = element.at_css('.problem-box__data').inner_text.gsub(/\n/, ' ').gsub(/\s+/, ' ')

      f.puts "#{title} #{expect_time_for_answer} #{answer_info_summary}"
    end
  end
end
