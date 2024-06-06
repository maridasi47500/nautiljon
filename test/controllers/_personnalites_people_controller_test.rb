require "test_helper"

class PersonnalitesPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_person = _personnalites_people(:one)
  end

  test "should get index" do
    get _personnalites_people_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_person_url
    assert_response :success
  end

  test "should create _personnalites_person" do
    assert_difference("PersonnalitesPerson.count") do
      post _personnalites_people_url, params: { _personnalites_person: { name: @_personnalites_person.name } }
    end

    assert_redirected_to _personnalites_person_url(PersonnalitesPerson.last)
  end

  test "should show _personnalites_person" do
    get _personnalites_person_url(@_personnalites_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_person_url(@_personnalites_person)
    assert_response :success
  end

  test "should update _personnalites_person" do
    patch _personnalites_person_url(@_personnalites_person), params: { _personnalites_person: { name: @_personnalites_person.name } }
    assert_redirected_to _personnalites_person_url(@_personnalites_person)
  end

  test "should destroy _personnalites_person" do
    assert_difference("PersonnalitesPerson.count", -1) do
      delete _personnalites_person_url(@_personnalites_person)
    end

    assert_redirected_to _personnalites_people_url
  end
end
