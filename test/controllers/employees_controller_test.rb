require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { date_of_birth: @employee.date_of_birth, date_of_join: @employee.date_of_join, department: @employee.department, employee_no: @employee.employee_no, father_name: @employee.father_name, first_name: @employee.first_name, last_name: @employee.last_name, marital_status: @employee.marital_status, middle_name: @employee.middle_name, mother_name: @employee.mother_name, technology: @employee.technology }
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  test "should update employee" do
    patch :update, id: @employee, employee: { date_of_birth: @employee.date_of_birth, date_of_join: @employee.date_of_join, department: @employee.department, employee_no: @employee.employee_no, father_name: @employee.father_name, first_name: @employee.first_name, last_name: @employee.last_name, marital_status: @employee.marital_status, middle_name: @employee.middle_name, mother_name: @employee.mother_name, technology: @employee.technology }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end
