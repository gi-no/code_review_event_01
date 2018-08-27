require 'pry'

# challenge info
class ChallengeInfo
  attr_accessor(
    :title,
    :expect_time_for_answer,
    :limit_time_for_answer,
    :correct_answer_rate,
    :average_answer_time_min,
    :average_answer_time_sec,
    :average_score
  )

  def setup_by_problem_box(problem_box_element)
    self.title = prase_header_title(problem_box_element)
    self.expect_time_for_answer, self.limit_time_for_answer =
      parse_header_note(problem_box_element)
    self.correct_answer_rate, self.average_answer_time_min, self.average_answer_time_sec, self.average_score =
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
    match_data = header_note_element&.text.match(/想定回答時間\n(\d+)\n分.*制限時間\n(\d+)\n時間/)
    raise '.problem-box__header__noteをparseできませんでした。' unless match_data
    [match_data[1].to_i, match_data[2].to_i]
  end

  def parse_problem_box_data(problem_box_element)
    box_data_element = problem_box_element.at_css('.problem-box__data')
    match_data =
      box_data_element.text.match(/正解率：\n(\d+\.\d+)％\n平均回答時間：\n(\d+)分(\d+)秒\n平均スコア：\n+(\d+\.\d+)点/)
    raise '.problem-box__dataをparseできませんでした。' unless box_data_element
    [match_data[1].to_f, match_data[2].to_i, match_data[3].to_i, match_data[4].to_f]
  end
end
