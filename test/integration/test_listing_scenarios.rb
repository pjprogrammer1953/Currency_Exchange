require_relative '../test_helper'

class TestListingScenarios < Minitest::Test

  def test_listing_no_scenarios
  shell_output = ""
  expected_output = ""
  IO.popen('./would_you_rather manage', 'r+') do |pipe|
    expected_output = <<EOS
1. Add a scenario
2. List all scenarios
3. Exit
EOS
    pipe.puts "2"
    expected_output << "No scenarios found. Add a scenario.\n"
    pipe.close_write
    shell_output = pipe.read
  end
  assert_equal expected_output, shell_output
  end
end
