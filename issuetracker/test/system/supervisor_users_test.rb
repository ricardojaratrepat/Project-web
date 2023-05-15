require "application_system_test_case"

class SupervisorUsersTest < ApplicationSystemTestCase
  setup do
    @supervisor_user = supervisor_users(:one)
  end

  test "visiting the index" do
    visit supervisor_users_url
    assert_selector "h1", text: "Supervisor users"
  end

  test "should create supervisor user" do
    visit supervisor_users_url
    click_on "New supervisor user"

    fill_in "User", with: @supervisor_user.user_id
    click_on "Create Supervisor user"

    assert_text "Supervisor user was successfully created"
    click_on "Back"
  end

  test "should update Supervisor user" do
    visit supervisor_user_url(@supervisor_user)
    click_on "Edit this supervisor user", match: :first

    fill_in "User", with: @supervisor_user.user_id
    click_on "Update Supervisor user"

    assert_text "Supervisor user was successfully updated"
    click_on "Back"
  end

  test "should destroy Supervisor user" do
    visit supervisor_user_url(@supervisor_user)
    click_on "Destroy this supervisor user", match: :first

    assert_text "Supervisor user was successfully destroyed"
  end
end
