require 'test_helper'

class SalariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @salary = salaries(:one)
  end

  test "should get index" do
    get salaries_url
    assert_response :success
  end

  test "should get new" do
    get new_salary_url
    assert_response :success
  end

  test "should create salary" do
    assert_difference('Salary.count') do
      post salaries_url, params: { salary: { actual_salary: @salary.actual_salary, current_salary: @salary.current_salary, employee_id: @salary.employee_id } }
    end

    assert_redirected_to salary_url(Salary.last)
  end

  test "should show salary" do
    get salary_url(@salary)
    assert_response :success
  end

  test "should get edit" do
    get edit_salary_url(@salary)
    assert_response :success
  end

  test "should update salary" do
    patch salary_url(@salary), params: { salary: { actual_salary: @salary.actual_salary, current_salary: @salary.current_salary, employee_id: @salary.employee_id } }
    assert_redirected_to salary_url(@salary)
  end

  test "should destroy salary" do
    assert_difference('Salary.count', -1) do
      delete salary_url(@salary)
    end

    assert_redirected_to salaries_url
  end
end
