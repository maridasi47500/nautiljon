require "test_helper"

class GeneriquesStaffPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_generiques_staff_person = _generiques_staff_people(:one)
  end

  test "should get index" do
    get _generiques_staff_people_url
    assert_response :success
  end

  test "should get new" do
    get new__generiques_staff_person_url
    assert_response :success
  end

  test "should create _generiques_staff_person" do
    assert_difference("GeneriquesStaffPerson.count") do
      post _generiques_staff_people_url, params: { _generiques_staff_person: { name: @_generiques_staff_person.name } }
    end

    assert_redirected_to _generiques_staff_person_url(GeneriquesStaffPerson.last)
  end

  test "should show _generiques_staff_person" do
    get _generiques_staff_person_url(@_generiques_staff_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__generiques_staff_person_url(@_generiques_staff_person)
    assert_response :success
  end

  test "should update _generiques_staff_person" do
    patch _generiques_staff_person_url(@_generiques_staff_person), params: { _generiques_staff_person: { name: @_generiques_staff_person.name } }
    assert_redirected_to _generiques_staff_person_url(@_generiques_staff_person)
  end

  test "should destroy _generiques_staff_person" do
    assert_difference("GeneriquesStaffPerson.count", -1) do
      delete _generiques_staff_person_url(@_generiques_staff_person)
    end

    assert_redirected_to _generiques_staff_people_url
  end
end
