require "test_helper"

class ParolesStaffPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_paroles_staff_person = _paroles_staff_people(:one)
  end

  test "should get index" do
    get _paroles_staff_people_url
    assert_response :success
  end

  test "should get new" do
    get new__paroles_staff_person_url
    assert_response :success
  end

  test "should create _paroles_staff_person" do
    assert_difference("ParolesStaffPerson.count") do
      post _paroles_staff_people_url, params: { _paroles_staff_person: { name: @_paroles_staff_person.name } }
    end

    assert_redirected_to _paroles_staff_person_url(ParolesStaffPerson.last)
  end

  test "should show _paroles_staff_person" do
    get _paroles_staff_person_url(@_paroles_staff_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__paroles_staff_person_url(@_paroles_staff_person)
    assert_response :success
  end

  test "should update _paroles_staff_person" do
    patch _paroles_staff_person_url(@_paroles_staff_person), params: { _paroles_staff_person: { name: @_paroles_staff_person.name } }
    assert_redirected_to _paroles_staff_person_url(@_paroles_staff_person)
  end

  test "should destroy _paroles_staff_person" do
    assert_difference("ParolesStaffPerson.count", -1) do
      delete _paroles_staff_person_url(@_paroles_staff_person)
    end

    assert_redirected_to _paroles_staff_people_url
  end
end
