require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post :create, contact: { f10: @contact.f10, f11: @contact.f11, f12: @contact.f12, f13: @contact.f13, f1: @contact.f1, f2: @contact.f2, f3: @contact.f3, f4: @contact.f4, f5: @contact.f5, f6: @contact.f6, f7: @contact.f7, f9_id: @contact.f9_id }
    end

    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should show contact" do
    get :show, id: @contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact
    assert_response :success
  end

  test "should update contact" do
    patch :update, id: @contact, contact: { f10: @contact.f10, f11: @contact.f11, f12: @contact.f12, f13: @contact.f13, f1: @contact.f1, f2: @contact.f2, f3: @contact.f3, f4: @contact.f4, f5: @contact.f5, f6: @contact.f6, f7: @contact.f7, f9_id: @contact.f9_id }
    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete :destroy, id: @contact
    end

    assert_redirected_to contacts_path
  end
end
