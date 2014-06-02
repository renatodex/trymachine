require 'test_helper'

class ExperimentVariantControllerTest < ActionController::TestCase
  test "should get view" do
    get :view
    assert_response :success
  end

  test "should get action" do
    get :action
    assert_response :success
  end

end
