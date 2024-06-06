require "test_helper"

class BrevesPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_person = _breves_people(:one)
  end

  test "should get index" do
    get _breves_people_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_person_url
    assert_response :success
  end

  test "should create _breves_person" do
    assert_difference("BrevesPerson.count") do
      post _breves_people_url, params: { _breves_person: { name: @_breves_person.name } }
    end

    assert_redirected_to _breves_person_url(BrevesPerson.last)
  end

  test "should show _breves_person" do
    get _breves_person_url(@_breves_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_person_url(@_breves_person)
    assert_response :success
  end

  test "should update _breves_person" do
    patch _breves_person_url(@_breves_person), params: { _breves_person: { name: @_breves_person.name } }
    assert_redirected_to _breves_person_url(@_breves_person)
  end

  test "should destroy _breves_person" do
    assert_difference("BrevesPerson.count", -1) do
      delete _breves_person_url(@_breves_person)
    end

    assert_redirected_to _breves_people_url
  end
end
