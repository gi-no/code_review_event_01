lines = []
File.foreach('result.txt') do |line|
  lines << line
end

sort_target = ARGV[0].split('=')[1] if ARGV[0]&.include?('=')
puts sort_target

case sort_target
when 'expect_time_for_answer'
  lines.sort_by! { |line| line.split(',')[1] }
when 'correct_answer_rate'
  lines.sort_by! { |line| line.split(',')[3] }.reverse!
when 'avarage_answer_time'
  lines.sort_by! { |line| line.split(',')[4] }
when 'avarage_score'
  lines.sort_by! { |line| line.split(',')[5] }.reverse!
end

lines.each do |line|
  puts line
end
