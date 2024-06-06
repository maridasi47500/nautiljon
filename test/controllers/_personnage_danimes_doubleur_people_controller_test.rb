require "test_helper"

class PersonnageDanimesDoubleurPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnage_danimes_doubleur_person = _personnage_danimes_doubleur_people(:one)
  end

  test "should get index" do
    get _personnage_danimes_doubleur_people_url
    assert_response :success
  end

  test "should get new" do
    get new__personnage_danimes_doubleur_person_url
    assert_response :success
  end

  test "should create _personnage_danimes_doubleur_person" do
    assert_difference("PersonnageDanimesDoubleurPerson.count") do
      post _personnage_danimes_doubleur_people_url, params: { _personnage_danimes_doubleur_person: { name: @_personnage_danimes_doubleur_person.name } }
    end

    assert_redirected_to _personnage_danimes_doubleur_person_url(PersonnageDanimesDoubleurPerson.last)
  end

  test "should show _personnage_danimes_doubleur_person" do
    get _personnage_danimes_doubleur_person_url(@_personnage_danimes_doubleur_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnage_danimes_doubleur_person_url(@_personnage_danimes_doubleur_person)
    assert_response :success
  end

  test "should update _personnage_danimes_doubleur_person" do
    patch _personnage_danimes_doubleur_person_url(@_personnage_danimes_doubleur_person), params: { _personnage_danimes_doubleur_person: { name: @_personnage_danimes_doubleur_person.name } }
    assert_redirected_to _personnage_danimes_doubleur_person_url(@_personnage_danimes_doubleur_person)
  end

  test "should destroy _personnage_danimes_doubleur_person" do
    assert_difference("PersonnageDanimesDoubleurPerson.count", -1) do
      delete _personnage_danimes_doubleur_person_url(@_personnage_danimes_doubleur_person)
    end

    assert_redirected_to _personnage_danimes_doubleur_people_url
  end
end
