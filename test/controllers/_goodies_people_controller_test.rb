require "test_helper"

class GoodiesPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_person = _goodies_people(:one)
  end

  test "should get index" do
    get _goodies_people_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_person_url
    assert_response :success
  end

  test "should create _goodies_person" do
    assert_difference("GoodiesPerson.count") do
      post _goodies_people_url, params: { _goodies_person: { name: @_goodies_person.name } }
    end

    assert_redirected_to _goodies_person_url(GoodiesPerson.last)
  end

  test "should show _goodies_person" do
    get _goodies_person_url(@_goodies_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_person_url(@_goodies_person)
    assert_response :success
  end

  test "should update _goodies_person" do
    patch _goodies_person_url(@_goodies_person), params: { _goodies_person: { name: @_goodies_person.name } }
    assert_redirected_to _goodies_person_url(@_goodies_person)
  end

  test "should destroy _goodies_person" do
    assert_difference("GoodiesPerson.count", -1) do
      delete _goodies_person_url(@_goodies_person)
    end

    assert_redirected_to _goodies_people_url
  end
end
