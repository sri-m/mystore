require 'test_helper'

class RegsControllerTest < ActionController::TestCase
  setup do
    @reg = regs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reg" do
    assert_difference('Reg.count') do
      post :create, reg: { f10: @reg.f10, f11: @reg.f11, f12: @reg.f12, f13: @reg.f13, f1: @reg.f1, f2: @reg.f2, f3: @reg.f3, f4: @reg.f4, f5: @reg.f5, f6: @reg.f6, f7: @reg.f7, f8: @reg.f8, f9_id: @reg.f9_id }
    end

    assert_redirected_to reg_path(assigns(:reg))
  end

  test "should show reg" do
    get :show, id: @reg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reg
    assert_response :success
  end

  test "should update reg" do
    patch :update, id: @reg, reg: { f10: @reg.f10, f11: @reg.f11, f12: @reg.f12, f13: @reg.f13, f1: @reg.f1, f2: @reg.f2, f3: @reg.f3, f4: @reg.f4, f5: @reg.f5, f6: @reg.f6, f7: @reg.f7, f8: @reg.f8, f9_id: @reg.f9_id }
    assert_redirected_to reg_path(assigns(:reg))
  end

  test "should destroy reg" do
    assert_difference('Reg.count', -1) do
      delete :destroy, id: @reg
    end

    assert_redirected_to regs_path
  end
end
