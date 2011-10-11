require 'rspec'
require '../lib/question_paper'

describe QuestionPaper do
  #subject {QuestionPaper.new}
  let(:question) { mock("Question")}

  it "should have an empty array of questions when QuestionPaper is created" do
    subject.questions.should be_an_instance_of(Array)
    subject.questions.size.should == 0
  end

  it "should add the question to the question paper" do
    #question = mock("Question")
    subject.add(question)
    subject.questions.should include(question)
  end



  context "when computing total available marks" do
    before do
      question.stub!(:mark).and_return(10)
      subject.add(question)
    end

    it "should compute the total available marks" do
      second_question = mock("Question")
      second_question.stub!(:mark).and_return(20)
      subject.add(second_question)

      subject.total_marks.should == 30
    end

    it "should call total_marks on the question in the paper" do
      #question = mock("Question")
      question.stub!(:mark).and_return(10)
      subject.add(question)

      question.should_receive(:mark)
      subject.total_marks
    end
  end
end