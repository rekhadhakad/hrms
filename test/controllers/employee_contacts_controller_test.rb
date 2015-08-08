require 'test_helper'

class EmployeeContactsControllerTest < ActionController::TestCase
  setup do
    @employee_contact = employee_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_contact" do
    assert_difference('EmployeeContact.count') do
      post :create, employee_contact: { address: @employee_contact.address, alternet_mobile_no: @employee_contact.alternet_mobile_no, current_address: @employee_contact.current_address, email: @employee_contact.email, employee_id: @employee_contact.employee_id, father_contact_no: @employee_contact.father_contact_no, home_phone: @employee_contact.home_phone, mobile_no: @employee_contact.mobile_no }
    end

    assert_redirected_to employee_contact_path(assigns(:employee_contact))
  end

  test "should show employee_contact" do
    get :show, id: @employee_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_contact
    assert_response :success
  end

  test "should update employee_contact" do
    patch :update, id: @employee_contact, employee_contact: { address: @employee_contact.address, alternet_mobile_no: @employee_contact.alternet_mobile_no, current_address: @employee_contact.current_address, email: @employee_contact.email, employee_id: @employee_contact.employee_id, father_contact_no: @employee_contact.father_contact_no, home_phone: @employee_contact.home_phone, mobile_no: @employee_contact.mobile_no }
    assert_redirected_to employee_contact_path(assigns(:employee_contact))
  end

  test "should destroy employee_contact" do
    assert_difference('EmployeeContact.count', -1) do
      delete :destroy, id: @employee_contact
    end

    assert_redirected_to employee_contacts_path
  end
end
