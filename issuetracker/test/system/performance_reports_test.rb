require "application_system_test_case"

class PerformanceReportsTest < ApplicationSystemTestCase
  setup do
    @performance_report = performance_reports(:one)
  end

  test "visiting the index" do
    visit performance_reports_url
    assert_selector "h1", text: "Performance reports"
  end

  test "should create performance report" do
    visit performance_reports_url
    click_on "New performance report"

    fill_in "Average evaluation", with: @performance_report.average_evaluation
    fill_in "Closed tickets", with: @performance_report.closed_tickets
    fill_in "Created tickets", with: @performance_report.created_tickets
    fill_in "Executive user", with: @performance_report.executive_user_id
    fill_in "Open tickets", with: @performance_report.open_tickets
    click_on "Create Performance report"

    assert_text "Performance report was successfully created"
    click_on "Back"
  end

  test "should update Performance report" do
    visit performance_report_url(@performance_report)
    click_on "Edit this performance report", match: :first

    fill_in "Average evaluation", with: @performance_report.average_evaluation
    fill_in "Closed tickets", with: @performance_report.closed_tickets
    fill_in "Created tickets", with: @performance_report.created_tickets
    fill_in "Executive user", with: @performance_report.executive_user_id
    fill_in "Open tickets", with: @performance_report.open_tickets
    click_on "Update Performance report"

    assert_text "Performance report was successfully updated"
    click_on "Back"
  end

  test "should destroy Performance report" do
    visit performance_report_url(@performance_report)
    click_on "Destroy this performance report", match: :first

    assert_text "Performance report was successfully destroyed"
  end
end
