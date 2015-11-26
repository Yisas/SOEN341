require 'test_helper'

class TimetableControllerTest < ActionController::TestCase
  test "should get read" do
    get :read
    assert_response :success
  end

end
