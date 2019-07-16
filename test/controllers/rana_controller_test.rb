require 'test_helper'

class RanaControllerTest < ActionDispatch::IntegrationTest
  test "should get umer" do
    get rana_umer_url
    assert_response :success
  end

end
