require 'test_helper'

class HmhrControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hmhr_index_url
    assert_response :success
  end

end
