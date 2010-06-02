require 'test_helper'

class AttendencesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attendences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attendence" do
    assert_difference('Attendence.count') do
      post :create, :attendence => { }
    end

    assert_redirected_to attendence_path(assigns(:attendence))
  end

  test "should show attendence" do
    get :show, :id => attendences(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => attendences(:one).to_param
    assert_response :success
  end

  test "should update attendence" do
    put :update, :id => attendences(:one).to_param, :attendence => { }
    assert_redirected_to attendence_path(assigns(:attendence))
  end

  test "should destroy attendence" do
    assert_difference('Attendence.count', -1) do
      delete :destroy, :id => attendences(:one).to_param
    end

    assert_redirected_to attendences_path
  end
end
