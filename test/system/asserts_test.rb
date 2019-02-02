require "application_system_test_case"

class AssertsTest < ApplicationSystemTestCase
  setup do
    @assert = asserts(:one)
  end

  test "visiting the index" do
    visit asserts_url
    assert_selector "h1", text: "Asserts"
  end

  test "creating a Assert" do
    visit asserts_url
    click_on "New Assert"

    fill_in "Company detail", with: @assert.company_detail_id
    fill_in "Equipment name", with: @assert.equipment_name
    fill_in "Equipment price", with: @assert.equipment_price
    click_on "Create Assert"

    assert_text "Assert was successfully created"
    click_on "Back"
  end

  test "updating a Assert" do
    visit asserts_url
    click_on "Edit", match: :first

    fill_in "Company detail", with: @assert.company_detail_id
    fill_in "Equipment name", with: @assert.equipment_name
    fill_in "Equipment price", with: @assert.equipment_price
    click_on "Update Assert"

    assert_text "Assert was successfully updated"
    click_on "Back"
  end

  test "destroying a Assert" do
    visit asserts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assert was successfully destroyed"
  end
end
