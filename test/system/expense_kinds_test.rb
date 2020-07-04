require "application_system_test_case"

class ExpenseKindsTest < ApplicationSystemTestCase
  setup do
    @expense_kind = expense_kinds(:one)
  end

  test "visiting the index" do
    visit expense_kinds_url
    assert_selector "h1", text: "Expense Kinds"
  end

  test "creating a Expense kind" do
    visit expense_kinds_url
    click_on "New Expense Kind"

    fill_in "Name", with: @expense_kind.name
    click_on "Create Expense kind"

    assert_text "Expense kind was successfully created"
    click_on "Back"
  end

  test "updating a Expense kind" do
    visit expense_kinds_url
    click_on "Edit", match: :first

    fill_in "Name", with: @expense_kind.name
    click_on "Update Expense kind"

    assert_text "Expense kind was successfully updated"
    click_on "Back"
  end

  test "destroying a Expense kind" do
    visit expense_kinds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expense kind was successfully destroyed"
  end
end
