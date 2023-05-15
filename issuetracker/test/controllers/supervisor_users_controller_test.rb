require "test_helper"

class SupervisorUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supervisor_user = supervisor_users(:one)
  end

  test "should get index" do
    get supervisor_users_url
    assert_response :success
  end

  test "should get new" do
    get new_supervisor_user_url
    assert_response :success
  end

  test "should create supervisor_user" do
    assert_difference("SupervisorUser.count") do
      post supervisor_users_url, params: { supervisor_user: { user_id: @supervisor_user.user_id } }
    end

    assert_redirected_to supervisor_user_url(SupervisorUser.last)
  end

  test "should show supervisor_user" do
    get supervisor_user_url(@supervisor_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_supervisor_user_url(@supervisor_user)
    assert_response :success
  end

  test "should update supervisor_user" do
    patch supervisor_user_url(@supervisor_user), params: { supervisor_user: { user_id: @supervisor_user.user_id } }
    assert_redirected_to supervisor_user_url(@supervisor_user)
  end

  test "should destroy supervisor_user" do
    assert_difference("SupervisorUser.count", -1) do
      delete supervisor_user_url(@supervisor_user)
    end

    assert_redirected_to supervisor_users_url
  end
end
