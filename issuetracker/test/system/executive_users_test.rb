require "application_system_test_case"

class ExecutiveUsersTest < ApplicationSystemTestCase
  setup do
    @executive_user = executive_users(:one)
  end

  test "visiting the index" do
    visit executive_users_url
    assert_selector "h1", text: "Executive users"
  end

  test "should create executive user" do
    visit executive_users_url
    click_on "New executive user"

    fill_in "User", with: @executive_user.user_id
    click_on "Create Executive user"

    assert_text "Executive user was successfully created"
    click_on "Back"
  end

  test "should update Executive user" do
    visit executive_user_url(@executive_user)
    click_on "Edit this executive user", match: :first

    fill_in "User", with: @executive_user.user_id
    click_on "Update Executive user"

    assert_text "Executive user was successfully updated"
    click_on "Back"
  end

  test "should destroy Executive user" do
    visit executive_user_url(@executive_user)
    click_on "Destroy this executive user", match: :first

    assert_text "Executive user was successfully destroyed"
  end
end
