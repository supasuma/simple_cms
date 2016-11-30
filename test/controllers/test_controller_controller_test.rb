require 'test_helper'

class TestControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get test_controller_index_url
    assert_response :success
  end

  test "should get newedit" do
    get test_controller_newedit_url
    assert_response :success
  end

end
