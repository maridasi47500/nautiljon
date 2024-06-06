require "test_helper"

class LivresStaffPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_staff_person = _livres_staff_people(:one)
  end

  test "should get index" do
    get _livres_staff_people_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_staff_person_url
    assert_response :success
  end

  test "should create _livres_staff_person" do
    assert_difference("LivresStaffPerson.count") do
      post _livres_staff_people_url, params: { _livres_staff_person: { name: @_livres_staff_person.name } }
    end

    assert_redirected_to _livres_staff_person_url(LivresStaffPerson.last)
  end

  test "should show _livres_staff_person" do
    get _livres_staff_person_url(@_livres_staff_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_staff_person_url(@_livres_staff_person)
    assert_response :success
  end

  test "should update _livres_staff_person" do
    patch _livres_staff_person_url(@_livres_staff_person), params: { _livres_staff_person: { name: @_livres_staff_person.name } }
    assert_redirected_to _livres_staff_person_url(@_livres_staff_person)
  end

  test "should destroy _livres_staff_person" do
    assert_difference("LivresStaffPerson.count", -1) do
      delete _livres_staff_person_url(@_livres_staff_person)
    end

    assert_redirected_to _livres_staff_people_url
  end
end
