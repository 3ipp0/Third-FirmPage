require 'test_helper'

class FewDaysMeetingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @few_days_meeting = few_days_meetings(:one)
  end

  test "should get index" do
    get few_days_meetings_url
    assert_response :success
  end

  test "should get new" do
    get new_few_days_meeting_url
    assert_response :success
  end

  test "should create few_days_meeting" do
    assert_difference('FewDaysMeeting.count') do
      post few_days_meetings_url, params: { few_days_meeting: { end_time: @few_days_meeting.end_time, name: @few_days_meeting.name, start_time: @few_days_meeting.start_time } }
    end

    assert_redirected_to few_days_meeting_url(FewDaysMeeting.last)
  end

  test "should show few_days_meeting" do
    get few_days_meeting_url(@few_days_meeting)
    assert_response :success
  end

  test "should get edit" do
    get edit_few_days_meeting_url(@few_days_meeting)
    assert_response :success
  end

  test "should update few_days_meeting" do
    patch few_days_meeting_url(@few_days_meeting), params: { few_days_meeting: { end_time: @few_days_meeting.end_time, name: @few_days_meeting.name, start_time: @few_days_meeting.start_time } }
    assert_redirected_to few_days_meeting_url(@few_days_meeting)
  end

  test "should destroy few_days_meeting" do
    assert_difference('FewDaysMeeting.count', -1) do
      delete few_days_meeting_url(@few_days_meeting)
    end

    assert_redirected_to few_days_meetings_url
  end
end
