require "test_helper"

class SupportStaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @support_staff = support_staffs(:one)
  end

  test "should get index" do
    get support_staffs_url
    assert_response :success
  end

  test "should get new" do
    get new_support_staff_url
    assert_response :success
  end

  test "should create support_staff" do
    assert_difference("SupportStaff.count") do
      post support_staffs_url, params: { support_staff: { user_id: @support_staff.user_id } }
    end

    assert_redirected_to support_staff_url(SupportStaff.last)
  end

  test "should show support_staff" do
    get support_staff_url(@support_staff)
    assert_response :success
  end

  test "should get edit" do
    get edit_support_staff_url(@support_staff)
    assert_response :success
  end

  test "should update support_staff" do
    patch support_staff_url(@support_staff), params: { support_staff: { user_id: @support_staff.user_id } }
    assert_redirected_to support_staff_url(@support_staff)
  end

  test "should destroy support_staff" do
    assert_difference("SupportStaff.count", -1) do
      delete support_staff_url(@support_staff)
    end

    assert_redirected_to support_staffs_url
  end
end
