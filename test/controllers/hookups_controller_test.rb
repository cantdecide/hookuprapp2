require 'test_helper'

class HookupsControllerTest < ActionController::TestCase
  setup do
    @hookup = hookups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hookups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hookup" do
    assert_difference('Hookup.count') do
      post :create, hookup: { age: @hookup.age, composite_score: @hookup.composite_score, dick: @hookup.dick, did_you_cuddle_afterwards: @hookup.did_you_cuddle_afterwards, did_you_cum: @hookup.did_you_cum, intenseness_of_orgasm: @hookup.intenseness_of_orgasm, level_of_attraction: @hookup.level_of_attraction, name: @hookup.name, personality: @hookup.personality }
    end

    assert_redirected_to hookup_path(assigns(:hookup))
  end

  test "should show hookup" do
    get :show, id: @hookup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hookup
    assert_response :success
  end

  test "should update hookup" do
    patch :update, id: @hookup, hookup: { age: @hookup.age, composite_score: @hookup.composite_score, dick: @hookup.dick, did_you_cuddle_afterwards: @hookup.did_you_cuddle_afterwards, did_you_cum: @hookup.did_you_cum, intenseness_of_orgasm: @hookup.intenseness_of_orgasm, level_of_attraction: @hookup.level_of_attraction, name: @hookup.name, personality: @hookup.personality }
    assert_redirected_to hookup_path(assigns(:hookup))
  end

  test "should destroy hookup" do
    assert_difference('Hookup.count', -1) do
      delete :destroy, id: @hookup
    end

    assert_redirected_to hookups_path
  end
end
