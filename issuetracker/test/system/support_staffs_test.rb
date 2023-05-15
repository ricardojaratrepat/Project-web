require "application_system_test_case"

class SupportStaffsTest < ApplicationSystemTestCase
  setup do
    @support_staff = support_staffs(:one)
  end

  test "visiting the index" do
    visit support_staffs_url
    assert_selector "h1", text: "Support staffs"
  end

  test "should create support staff" do
    visit support_staffs_url
    click_on "New support staff"

    fill_in "User", with: @support_staff.user_id
    click_on "Create Support staff"

    assert_text "Support staff was successfully created"
    click_on "Back"
  end

  test "should update Support staff" do
    visit support_staff_url(@support_staff)
    click_on "Edit this support staff", match: :first

    fill_in "User", with: @support_staff.user_id
    click_on "Update Support staff"

    assert_text "Support staff was successfully updated"
    click_on "Back"
  end

  test "should destroy Support staff" do
    visit support_staff_url(@support_staff)
    click_on "Destroy this support staff", match: :first

    assert_text "Support staff was successfully destroyed"
  end
end
