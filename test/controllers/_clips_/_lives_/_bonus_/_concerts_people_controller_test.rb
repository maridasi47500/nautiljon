require "test_helper"

class Clips::Lives::Bonus::ConcertsPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_clips___lives___bonus___concerts_person = _clips___lives___bonus___concerts_people(:one)
  end

  test "should get index" do
    get _clips___lives___bonus___concerts_people_url
    assert_response :success
  end

  test "should get new" do
    get new__clips___lives___bonus___concerts_person_url
    assert_response :success
  end

  test "should create _clips___lives___bonus___concerts_person" do
    assert_difference("Clips::Lives::Bonus::ConcertsPerson.count") do
      post _clips___lives___bonus___concerts_people_url, params: { _clips___lives___bonus___concerts_person: { name: @_clips___lives___bonus___concerts_person.name } }
    end

    assert_redirected_to _clips___lives___bonus___concerts_person_url(Clips::Lives::Bonus::ConcertsPerson.last)
  end

  test "should show _clips___lives___bonus___concerts_person" do
    get _clips___lives___bonus___concerts_person_url(@_clips___lives___bonus___concerts_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__clips___lives___bonus___concerts_person_url(@_clips___lives___bonus___concerts_person)
    assert_response :success
  end

  test "should update _clips___lives___bonus___concerts_person" do
    patch _clips___lives___bonus___concerts_person_url(@_clips___lives___bonus___concerts_person), params: { _clips___lives___bonus___concerts_person: { name: @_clips___lives___bonus___concerts_person.name } }
    assert_redirected_to _clips___lives___bonus___concerts_person_url(@_clips___lives___bonus___concerts_person)
  end

  test "should destroy _clips___lives___bonus___concerts_person" do
    assert_difference("Clips::Lives::Bonus::ConcertsPerson.count", -1) do
      delete _clips___lives___bonus___concerts_person_url(@_clips___lives___bonus___concerts_person)
    end

    assert_redirected_to _clips___lives___bonus___concerts_people_url
  end
end
