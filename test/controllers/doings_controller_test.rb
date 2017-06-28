require 'test_helper'

class DoingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doing = doings(:one)
  end

  test "should get index" do
    get doings_url
    assert_response :success
  end

  test "should get new" do
    get new_doing_url
    assert_response :success
  end

  test "should create doing" do
    assert_difference('Doing.count') do
      post doings_url, params: { doing: { done_at: @doing.done_at, duration_in_minutes: @doing.duration_in_minutes, thing_id: @doing.thing_id } }
    end

    assert_redirected_to root_path
  end

  test "should show doing" do
    get doing_url(@doing)
    assert_response :success
  end

  test "should get edit" do
    get edit_doing_url(@doing)
    assert_response :success
  end

  test "should update doing" do
    patch doing_url(@doing), params: { doing: { done_at: @doing.done_at, duration_in_minutes: @doing.duration_in_minutes, thing_id: @doing.thing_id } }
    assert_redirected_to doing_url(@doing)
  end

  test "should destroy doing" do
    assert_difference('Doing.count', -1) do
      delete doing_url(@doing)
    end

    assert_redirected_to doings_url
  end
end
