require 'test_helper'

class PrivatesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get privates_show_url
    assert_response :success
  end

  test "should get new" do
    get privates_new_url
    assert_response :success
  end

end
