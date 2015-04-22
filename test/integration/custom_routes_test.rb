require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that /login route loads the login page" do
    get '/login'
    assert_response :success
  end
  
  test "that /logout route loads the login page" do
    get '/logout'
    assert_response :redirect
    assert_redirected_to '/'
  end
  
  
  test "that /register route loads the login page" do
    get '/register'
    assert_response :success
    
  end
  
end
