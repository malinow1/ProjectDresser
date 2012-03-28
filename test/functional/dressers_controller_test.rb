require 'test_helper'

class DressersControllerTest < ActionController::TestCase
  setup do
    @dresser = dressers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dressers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dresser" do
    assert_difference('Dresser.count') do
      post :create, dresser: @dresser.attributes
    end

    assert_redirected_to dresser_path(assigns(:dresser))
  end

  test "should show dresser" do
    get :show, id: @dresser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dresser
    assert_response :success
  end

  test "should update dresser" do
    put :update, id: @dresser, dresser: @dresser.attributes
    assert_redirected_to dresser_path(assigns(:dresser))
  end

  test "should destroy dresser" do
    assert_difference('Dresser.count', -1) do
      delete :destroy, id: @dresser
    end

    assert_redirected_to dressers_path
  end
end
