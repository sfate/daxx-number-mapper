require "test_helper"

class NumberMapper::CLITest < Minitest::Test

  def test_that_it_has_proper_output_from_cli
    output = %x[bin/number_mapper -n 6686787825].chomp

    assert_equal(
      output,
      [["NOUN", "STRUCK"], ["ONTO", "STRUCK"], ["MOTOR", "TRUCK"], ["NOUNS", "TRUCK"], ["MOTOR", "USUAL"], ["NOUNS", "USUAL"], "MOTORTRUCK"].to_s
    )
  end

end
