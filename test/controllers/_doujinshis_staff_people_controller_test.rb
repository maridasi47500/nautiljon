require "test_helper"

class DoujinshisStaffPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_staff_person = _doujinshis_staff_people(:one)
  end

  test "should get index" do
    get _doujinshis_staff_people_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_staff_person_url
    assert_response :success
  end

  test "should create _doujinshis_staff_person" do
    assert_difference("DoujinshisStaffPerson.count") do
      post _doujinshis_staff_people_url, params: { _doujinshis_staff_person: { name: @_doujinshis_staff_person.name } }
    end

    assert_redirected_to _doujinshis_staff_person_url(DoujinshisStaffPerson.last)
  end

  test "should show _doujinshis_staff_person" do
    get _doujinshis_staff_person_url(@_doujinshis_staff_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_staff_person_url(@_doujinshis_staff_person)
    assert_response :success
  end

  test "should update _doujinshis_staff_person" do
    patch _doujinshis_staff_person_url(@_doujinshis_staff_person), params: { _doujinshis_staff_person: { name: @_doujinshis_staff_person.name } }
    assert_redirected_to _doujinshis_staff_person_url(@_doujinshis_staff_person)
  end

  test "should destroy _doujinshis_staff_person" do
    assert_difference("DoujinshisStaffPerson.count", -1) do
      delete _doujinshis_staff_person_url(@_doujinshis_staff_person)
    end

    assert_redirected_to _doujinshis_staff_people_url
  end
end
