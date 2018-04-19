require 'test_helper'

class RpgsControllerTest < ActionController::TestCase
  test "should get financial_process" do
    get :financial_process
    assert_response :success
  end

end
