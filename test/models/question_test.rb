require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = users(:one)
    @question = Question.new(
      user_id:@user.id,
      title:"test title",
      content:"test content",
      )
  end

  test "should be valid" do
    assert @question.valid?
  end

  # question
  test "title should be present" do
    @question.title = nil
    assert_not @question.valid?
  end

  # content
  test "content should be present" do
    @question.content = nil
    assert_not @question.valid?
  end
end
