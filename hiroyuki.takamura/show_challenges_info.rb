require 'yaml'
require './challenge_info'

require 'pry'

challenge_infos = []
File.open('result.yaml') do |f|
  challenge_infos = YAML.load(f)
end

sort_target = ARGV[0].split('=')[1] if ARGV[0]&.include?('=')

challenge_infos.sort_by! do |challenge_info|
  case sort_target
  when 'expect_time_for_answer'
    challenge_info.expect_time_for_answer
  when 'correct_answer_rate'
    - challenge_info.correct_answer_rate
  when 'average_answer_time'
    [challenge_info.average_answer_time_min, challenge_info.average_answer_time_sec]
  when 'average_score'
    - challenge_info.average_score
  end
end

challenge_infos.each do |challenge_info|
  puts challenge_info.inspect
end
