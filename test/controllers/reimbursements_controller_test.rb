require 'test_helper'

class ReimbursementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reimbursement = reimbursements(:one)
  end

  test "should get index" do
    get reimbursements_url
    assert_response :success
  end

  test "should get new" do
    get new_reimbursement_url
    assert_response :success
  end

  test "should create reimbursement" do
    assert_difference('Reimbursement.count') do
      post reimbursements_url, params: { reimbursement: { cost: @reimbursement.cost, employee_id: @reimbursement.employee_id, purpose: @reimbursement.purpose } }
    end

    assert_redirected_to reimbursement_url(Reimbursement.last)
  end

  test "should show reimbursement" do
    get reimbursement_url(@reimbursement)
    assert_response :success
  end

  test "should get edit" do
    get edit_reimbursement_url(@reimbursement)
    assert_response :success
  end

  test "should update reimbursement" do
    patch reimbursement_url(@reimbursement), params: { reimbursement: { cost: @reimbursement.cost, employee_id: @reimbursement.employee_id, purpose: @reimbursement.purpose } }
    assert_redirected_to reimbursement_url(@reimbursement)
  end

  test "should destroy reimbursement" do
    assert_difference('Reimbursement.count', -1) do
      delete reimbursement_url(@reimbursement)
    end

    assert_redirected_to reimbursements_url
  end
end
