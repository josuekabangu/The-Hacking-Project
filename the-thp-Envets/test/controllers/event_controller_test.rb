require 'test_helper'

class EventControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get event_index_url
    assert_response :success
  end

  test "should get secret" do
    get event_secret_url
    assert_response :success
  end

end
