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
    %W[#{title} #{expect_time_for_answer} #{limit_time_for_answer} #{correct_answer_rate} #{average_answer_time} #{average_score}].join(' , ')
  end
end
