require 'test_helper'

class ExpenseKindsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expense_kind = expense_kinds(:one)
  end

  test "should get index" do
    get expense_kinds_url
    assert_response :success
  end

  test "should get new" do
    get new_expense_kind_url
    assert_response :success
  end

  test "should create expense_kind" do
    assert_difference('ExpenseKind.count') do
      post expense_kinds_url, params: { expense_kind: { name: @expense_kind.name } }
    end

    assert_redirected_to expense_kind_url(ExpenseKind.last)
  end

  test "should show expense_kind" do
    get expense_kind_url(@expense_kind)
    assert_response :success
  end

  test "should get edit" do
    get edit_expense_kind_url(@expense_kind)
    assert_response :success
  end

  test "should update expense_kind" do
    patch expense_kind_url(@expense_kind), params: { expense_kind: { name: @expense_kind.name } }
    assert_redirected_to expense_kind_url(@expense_kind)
  end

  test "should destroy expense_kind" do
    assert_difference('ExpenseKind.count', -1) do
      delete expense_kind_url(@expense_kind)
    end

    assert_redirected_to expense_kinds_url
  end
end
