require 'benchmark'
require 'test_helper'

class NumberMapper::BenchmarkTest < Minitest::Test

  def test_that_it_should_fast_enough
    time = Benchmark.measure do
      NumberMapper::Processor\
        .new\
        .call(phone_number: 6686787825)
    end

    # NOTE: Alexey Bobyrev 20 June 2017
    # Due to limited CPU powers on TravisCI execution time could take up to 3 seconds
    perfect_time = ENV['TRAVIS'] ? 3.0 : 1.0

    assert(time.real <= perfect_time, "Execution time is greater than 1s: #{time.real}")
  end

end
