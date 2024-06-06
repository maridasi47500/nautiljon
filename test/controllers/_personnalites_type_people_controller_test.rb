require "test_helper"

class PersonnalitesTypePeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_type_person = _personnalites_type_people(:one)
  end

  test "should get index" do
    get _personnalites_type_people_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_type_person_url
    assert_response :success
  end

  test "should create _personnalites_type_person" do
    assert_difference("PersonnalitesTypePerson.count") do
      post _personnalites_type_people_url, params: { _personnalites_type_person: { name: @_personnalites_type_person.name } }
    end

    assert_redirected_to _personnalites_type_person_url(PersonnalitesTypePerson.last)
  end

  test "should show _personnalites_type_person" do
    get _personnalites_type_person_url(@_personnalites_type_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_type_person_url(@_personnalites_type_person)
    assert_response :success
  end

  test "should update _personnalites_type_person" do
    patch _personnalites_type_person_url(@_personnalites_type_person), params: { _personnalites_type_person: { name: @_personnalites_type_person.name } }
    assert_redirected_to _personnalites_type_person_url(@_personnalites_type_person)
  end

  test "should destroy _personnalites_type_person" do
    assert_difference("PersonnalitesTypePerson.count", -1) do
      delete _personnalites_type_person_url(@_personnalites_type_person)
    end

    assert_redirected_to _personnalites_type_people_url
  end
end
