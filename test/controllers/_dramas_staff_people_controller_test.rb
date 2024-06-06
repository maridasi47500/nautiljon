require "test_helper"

class DramasStaffPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_staff_person = _dramas_staff_people(:one)
  end

  test "should get index" do
    get _dramas_staff_people_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_staff_person_url
    assert_response :success
  end

  test "should create _dramas_staff_person" do
    assert_difference("DramasStaffPerson.count") do
      post _dramas_staff_people_url, params: { _dramas_staff_person: { name: @_dramas_staff_person.name } }
    end

    assert_redirected_to _dramas_staff_person_url(DramasStaffPerson.last)
  end

  test "should show _dramas_staff_person" do
    get _dramas_staff_person_url(@_dramas_staff_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_staff_person_url(@_dramas_staff_person)
    assert_response :success
  end

  test "should update _dramas_staff_person" do
    patch _dramas_staff_person_url(@_dramas_staff_person), params: { _dramas_staff_person: { name: @_dramas_staff_person.name } }
    assert_redirected_to _dramas_staff_person_url(@_dramas_staff_person)
  end

  test "should destroy _dramas_staff_person" do
    assert_difference("DramasStaffPerson.count", -1) do
      delete _dramas_staff_person_url(@_dramas_staff_person)
    end

    assert_redirected_to _dramas_staff_people_url
  end
end
