require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, id: user(:saefinn).profile_name
    assert_response :success
    assert_template 'profiles/show'
  end
  test "should render a 404 page" do
    get :show, id: "doesn't exist"
    assert_response :not_found
  end
end
