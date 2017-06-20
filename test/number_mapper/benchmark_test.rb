require 'benchmark'
require 'test_helper'

class NumberMapper::BenchmarkTest < Minitest::Test

  def test_that_it_should_fast_enough
    time = Benchmark.measure do
      NumberMapper::Processor\
        .new\
        .call(phone_number: 6686787825)
    end

    assert(time.real <= 1.0, "Execution time is greater than 1s: #{time.real}")
  end

end
