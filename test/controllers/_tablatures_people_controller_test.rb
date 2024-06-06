require "test_helper"

class TablaturesPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_tablatures_person = _tablatures_people(:one)
  end

  test "should get index" do
    get _tablatures_people_url
    assert_response :success
  end

  test "should get new" do
    get new__tablatures_person_url
    assert_response :success
  end

  test "should create _tablatures_person" do
    assert_difference("TablaturesPerson.count") do
      post _tablatures_people_url, params: { _tablatures_person: { name: @_tablatures_person.name } }
    end

    assert_redirected_to _tablatures_person_url(TablaturesPerson.last)
  end

  test "should show _tablatures_person" do
    get _tablatures_person_url(@_tablatures_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__tablatures_person_url(@_tablatures_person)
    assert_response :success
  end

  test "should update _tablatures_person" do
    patch _tablatures_person_url(@_tablatures_person), params: { _tablatures_person: { name: @_tablatures_person.name } }
    assert_redirected_to _tablatures_person_url(@_tablatures_person)
  end

  test "should destroy _tablatures_person" do
    assert_difference("TablaturesPerson.count", -1) do
      delete _tablatures_person_url(@_tablatures_person)
    end

    assert_redirected_to _tablatures_people_url
  end
end
