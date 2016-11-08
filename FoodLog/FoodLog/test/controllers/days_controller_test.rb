require 'test_helper'

class DaysControllerTest < ActionController::TestCase
  setup do
    @day = days(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:days)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create day" do
    assert_difference('Day.count') do
      post :create, day: { b_syns: @day.b_syns, breakfast: @day.breakfast, d_syns: @day.d_syns, date: @day.date, dinner: @day.dinner, l_syn: @day.l_syn, lunch: @day.lunch, s_syns: @day.s_syns, snacks: @day.snacks, title: @day.title }
    end

    assert_redirected_to day_path(assigns(:day))
  end

  test "should show day" do
    get :show, id: @day
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @day
    assert_response :success
  end

  test "should update day" do
    patch :update, id: @day, day: { b_syns: @day.b_syns, breakfast: @day.breakfast, d_syns: @day.d_syns, date: @day.date, dinner: @day.dinner, l_syn: @day.l_syn, lunch: @day.lunch, s_syns: @day.s_syns, snacks: @day.snacks, title: @day.title }
    assert_redirected_to day_path(assigns(:day))
  end

  test "should destroy day" do
    assert_difference('Day.count', -1) do
      delete :destroy, id: @day
    end

    assert_redirected_to days_path
  end
end
