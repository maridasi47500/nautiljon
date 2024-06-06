require "test_helper"

class DoujinshisPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_person = _doujinshis_people(:one)
  end

  test "should get index" do
    get _doujinshis_people_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_person_url
    assert_response :success
  end

  test "should create _doujinshis_person" do
    assert_difference("DoujinshisPerson.count") do
      post _doujinshis_people_url, params: { _doujinshis_person: { name: @_doujinshis_person.name } }
    end

    assert_redirected_to _doujinshis_person_url(DoujinshisPerson.last)
  end

  test "should show _doujinshis_person" do
    get _doujinshis_person_url(@_doujinshis_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_person_url(@_doujinshis_person)
    assert_response :success
  end

  test "should update _doujinshis_person" do
    patch _doujinshis_person_url(@_doujinshis_person), params: { _doujinshis_person: { name: @_doujinshis_person.name } }
    assert_redirected_to _doujinshis_person_url(@_doujinshis_person)
  end

  test "should destroy _doujinshis_person" do
    assert_difference("DoujinshisPerson.count", -1) do
      delete _doujinshis_person_url(@_doujinshis_person)
    end

    assert_redirected_to _doujinshis_people_url
  end
end
