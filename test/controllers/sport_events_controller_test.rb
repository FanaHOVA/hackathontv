require 'test_helper'

class SportEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sport_event = sport_events(:one)
  end

  test "should get index" do
    get sport_events_url
    assert_response :success
  end

  test "should create sport_event" do
    assert_difference('SportEvent.count') do
      post sport_events_url, params: { sport_event: { location: @sport_event.location, name: @sport_event.name, sport: @sport_event.sport, time: @sport_event.time } }
    end

    assert_response 201
  end

  test "should show sport_event" do
    get sport_event_url(@sport_event)
    assert_response :success
  end

  test "should update sport_event" do
    patch sport_event_url(@sport_event), params: { sport_event: { location: @sport_event.location, name: @sport_event.name, sport: @sport_event.sport, time: @sport_event.time } }
    assert_response 200
  end

  test "should destroy sport_event" do
    assert_difference('SportEvent.count', -1) do
      delete sport_event_url(@sport_event)
    end

    assert_response 204
  end
end
