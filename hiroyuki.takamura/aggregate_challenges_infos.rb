require 'open-uri'
require 'nokogiri'

require './challenge_info'

urls = %w[
  https://paiza.jp/challenges/ranks/s/info
  https://paiza.jp/challenges/ranks/a/info
  https://paiza.jp/challenges/ranks/b/info
  https://paiza.jp/challenges/ranks/c/info
  https://paiza.jp/challenges/ranks/d/info
]


urls.each do |url|
  html = open(url, &:read)

  contents = Nokogiri::HTML.parse(html)

  File.open('result.txt', 'w') do |f|
    contents.css('.problem-box').each do |element|
      challenge_info = ChallengeInfo.new
      challenge_info.title = element.at_css('.problem-box__header__title').inner_text.strip
      challenge_info.expect_time_for_answer = element.at_css('.problem-box__header__note').inner_text.gsub(/\n/, ' ').gsub(/\s+/, ' ').split[1]
      challenge_info.limit_time_for_answer = element.at_css('.problem-box__header__note').inner_text.gsub(/\n/, ' ').gsub(/\s+/, ' ').split[3]
      answer_info_summary = element.at_css('.problem-box__data').inner_text.gsub(/\n/, ' ').gsub(/\s+/, ' ').split
      challenge_info.correct_answer_rate = answer_info_summary[1]
      challenge_info.average_answer_time = answer_info_summary[3]
      challenge_info.average_score       = answer_info_summary[5]

      f.puts challenge_info.to_csv
    end
  end
end
