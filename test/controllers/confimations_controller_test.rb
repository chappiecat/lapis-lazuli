require "test_helper"

class ConfimationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get confimations_new_url
    assert_response :success
  end
end
