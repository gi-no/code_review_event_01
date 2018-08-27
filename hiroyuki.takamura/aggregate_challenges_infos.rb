require 'open-uri'
require 'nokogiri'
require 'yaml'

require './challenge_info'

urls = %w[
  https://paiza.jp/challenges/ranks/s/info
  https://paiza.jp/challenges/ranks/a/info
  https://paiza.jp/challenges/ranks/b/info
  https://paiza.jp/challenges/ranks/c/info
  https://paiza.jp/challenges/ranks/d/info
]

challenge_infos = []
urls.each do |url|
  html = open(url, &:read)

  contents = Nokogiri::HTML.parse(html)

  contents.css('.problem-box').each do |element|
    challenge_info = ChallengeInfo.new
    challenge_info.setup_by_problem_box(element)
    challenge_infos << challenge_info
  end
end

File.open('result.yaml', 'w') do |f|
  YAML.dump(challenge_infos, f)
end
