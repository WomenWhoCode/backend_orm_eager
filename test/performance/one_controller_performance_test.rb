require 'test_helper'
require 'helpers/performance_test_helper'

class OneControllerPerformanceTest < ActionDispatch::IntegrationTest
  test "index" do
    tms = Benchmark.measure {
      get '/1'
    }
    assert_operator tms.real, :<, 0.1
  end
end
