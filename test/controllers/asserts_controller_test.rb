require 'test_helper'

class AssertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assert = asserts(:one)
  end

  test "should get index" do
    get asserts_url
    assert_response :success
  end

  test "should get new" do
    get new_assert_url
    assert_response :success
  end

  test "should create assert" do
    assert_difference('Assert.count') do
      post asserts_url, params: { assert: { company_detail_id: @assert.company_detail_id, equipment_name: @assert.equipment_name, equipment_price: @assert.equipment_price } }
    end

    assert_redirected_to assert_url(Assert.last)
  end

  test "should show assert" do
    get assert_url(@assert)
    assert_response :success
  end

  test "should get edit" do
    get edit_assert_url(@assert)
    assert_response :success
  end

  test "should update assert" do
    patch assert_url(@assert), params: { assert: { company_detail_id: @assert.company_detail_id, equipment_name: @assert.equipment_name, equipment_price: @assert.equipment_price } }
    assert_redirected_to assert_url(@assert)
  end

  test "should destroy assert" do
    assert_difference('Assert.count', -1) do
      delete assert_url(@assert)
    end

    assert_redirected_to asserts_url
  end
end
