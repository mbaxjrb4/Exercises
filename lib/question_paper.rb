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
    @question.inject(0) { |sum, q| sum+=q.mark }
  end
end