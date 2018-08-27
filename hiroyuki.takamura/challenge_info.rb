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

  def setup_by_problem_box(problem_box_element)
    self.title = problem_box_element.at_css('.problem-box__header__title').inner_text.strip
    self.expect_time_for_answer = problem_box_element.at_css('.problem-box__header__note').inner_text.gsub(/\n/, ' ').gsub(/\s+/, ' ').split[1]
    self.limit_time_for_answer = problem_box_element.at_css('.problem-box__header__note').inner_text.gsub(/\n/, ' ').gsub(/\s+/, ' ').split[3]
    answer_info_summary = problem_box_element.at_css('.problem-box__data').inner_text.gsub(/\n/, ' ').gsub(/\s+/, ' ').split
    self.correct_answer_rate = answer_info_summary[1]
    self.average_answer_time = answer_info_summary[3]
    self.average_score       = answer_info_summary[5]
  end
end
