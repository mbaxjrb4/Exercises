class QuestionPaper
  def initialize
    @question = []

  end
  def questions
    @question
  end

  def add(question)
    @question << question
  end

  def total_marks
    sum = 0
    @question.each do |q|
      sum += q.mark
    end
    sum
  end
end