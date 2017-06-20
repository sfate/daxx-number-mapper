require 'test_helper'

class NumberMapper::AlgorithmTest < Minitest::Test

  def test_that_it_should_have_correct_result
    result = NumberMapper::Processor\
      .new\
      .call(phone_number: 6686787825)

    assert_equal(
      result,
      [["NOUN", "STRUCK"], ["ONTO", "STRUCK"], ["MOTOR", "TRUCK"], ["NOUNS", "TRUCK"], ["MOTOR", "USUAL"], ["NOUNS", "USUAL"], "MOTORTRUCK"]
    )
  end

end
