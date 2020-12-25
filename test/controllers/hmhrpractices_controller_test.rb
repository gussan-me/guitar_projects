require 'test_helper'

class HmhrpracticesControllerTest < ActionDispatch::IntegrationTest
  test "should get confirm" do
    get hmhrpractices_confirm_url
    assert_response :success
  end

end
