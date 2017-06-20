require 'test_helper'

class NumberMapper::VersionTest < Minitest::Test

  def test_that_it_has_a_version_number
    refute_nil ::NumberMapper::VERSION
  end

end
