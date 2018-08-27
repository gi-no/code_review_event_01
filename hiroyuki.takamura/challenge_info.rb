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
    self.title = prase_header_title(problem_box_element)
    self.expect_time_for_answer, self.limit_time_for_answer =
      parse_header_note(problem_box_element)
    self.correct_answer_rate, self.average_answer_time, self.average_score =
      parse_problem_box_data(problem_box_element)
  end

  private

  def prase_header_title(problem_box_element)
    title_element = problem_box_element.at_css('.problem-box__header__title')
    raise '.problem-box__header__titleをparseできませんでした。' unless title_element
    title_element.inner_text.strip
  end

  def parse_header_note(problem_box_element)
    header_note_element =
      problem_box_element.at_css('.problem-box__header__note')
    raise '.problem-box__header__noteをparseできませんでした。' unless header_note_element
    tokens = header_note_element.inner_text.gsub(/\n/, ' ').gsub(/\s+/, ' ').split
    [tokens[1], tokens[3]]
  end

  def parse_problem_box_data(problem_box_element)
    box_data_element = problem_box_element.at_css('.problem-box__data')
    raise '.problem-box__dataをparseできませんでした。' unless box_data_element
    tokens = box_data_element.inner_text.gsub(/\n/, ' ').gsub(/\s+/, ' ').split
    [tokens[1], tokens[3], tokens[5]]
  end
end
