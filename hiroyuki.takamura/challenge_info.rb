# challenge info
class ChallengeInfo
  attr_accessor(
    :title,
    :expect_time_for_answer,
    :limit_time_for_answer,
    :correct_answer_rate,
    :average_answer_time,
    :average_score
  )

  def to_s
    instance_variables.map do |v_name|
      "#{v_name} : #{instance_variable_get(v_name)}"
    end.join(',')
  end
end
