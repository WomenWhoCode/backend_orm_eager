require 'test_helper'
require 'helpers/performance_test_helper'

class ThreeControllerPerformanceTest < ActionDispatch::IntegrationTest
  test "index" do
    tms = Benchmark.measure {
      get '/3'
    }
    assert_operator tms.real, :<, 0.1
  end
end
