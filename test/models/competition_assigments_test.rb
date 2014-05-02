require 'test_helper'

class CompetitionAssigmentsTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "competitionassigment cant be empty" do
    ca = CompetitionAssigment.new
    assert ca.invalid?
    assert ca.errors[:user_id].any?
    assert ca.errors[:school_id].any?
    assert ca.errors[:competition_id].any?
   # assert ca.errors[:user_grade].any?
    assert ca.errors[:teacher_name].any?
  end

end
