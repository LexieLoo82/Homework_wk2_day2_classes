require('minitest/autorun')
require('minitest/rg')
require_relative('../student.rb')

class TestStudent < MiniTest::Test

def setup
  @student = Student.new("Jack", "G2")
end

def test_student_name
  assert_equal("Jack", @student.get_name)
end

def test_student_cohort
  assert_equal("G2", @student.get_cohort)
end

def test_set_name
@student.set_name("Rose")
assert_equal("Rose", @student.get_name())
end

def test_set_coHort
  @student.set_cohort("G10")
  assert_equal("G10", @student.get_cohort())
end

def test_student_talking
  assert_equal("I can talk", @student.can_talk)
end

def test_student_language
  assert_equal("I love Ruby", @student.fav_language("Ruby"))
end


end
