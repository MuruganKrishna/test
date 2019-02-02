require "application_system_test_case"

class ReimbursementsTest < ApplicationSystemTestCase
  setup do
    @reimbursement = reimbursements(:one)
  end

  test "visiting the index" do
    visit reimbursements_url
    assert_selector "h1", text: "Reimbursements"
  end

  test "creating a Reimbursement" do
    visit reimbursements_url
    click_on "New Reimbursement"

    fill_in "Cost", with: @reimbursement.cost
    fill_in "Employee", with: @reimbursement.employee_id
    fill_in "Purpose", with: @reimbursement.purpose
    click_on "Create Reimbursement"

    assert_text "Reimbursement was successfully created"
    click_on "Back"
  end

  test "updating a Reimbursement" do
    visit reimbursements_url
    click_on "Edit", match: :first

    fill_in "Cost", with: @reimbursement.cost
    fill_in "Employee", with: @reimbursement.employee_id
    fill_in "Purpose", with: @reimbursement.purpose
    click_on "Update Reimbursement"

    assert_text "Reimbursement was successfully updated"
    click_on "Back"
  end

  test "destroying a Reimbursement" do
    visit reimbursements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reimbursement was successfully destroyed"
  end
end
