require "test_helper"

class GoodiesStaffPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_staff_person = _goodies_staff_people(:one)
  end

  test "should get index" do
    get _goodies_staff_people_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_staff_person_url
    assert_response :success
  end

  test "should create _goodies_staff_person" do
    assert_difference("GoodiesStaffPerson.count") do
      post _goodies_staff_people_url, params: { _goodies_staff_person: { name: @_goodies_staff_person.name } }
    end

    assert_redirected_to _goodies_staff_person_url(GoodiesStaffPerson.last)
  end

  test "should show _goodies_staff_person" do
    get _goodies_staff_person_url(@_goodies_staff_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_staff_person_url(@_goodies_staff_person)
    assert_response :success
  end

  test "should update _goodies_staff_person" do
    patch _goodies_staff_person_url(@_goodies_staff_person), params: { _goodies_staff_person: { name: @_goodies_staff_person.name } }
    assert_redirected_to _goodies_staff_person_url(@_goodies_staff_person)
  end

  test "should destroy _goodies_staff_person" do
    assert_difference("GoodiesStaffPerson.count", -1) do
      delete _goodies_staff_person_url(@_goodies_staff_person)
    end

    assert_redirected_to _goodies_staff_people_url
  end
end
