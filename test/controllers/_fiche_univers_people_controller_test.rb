require "test_helper"

class FicheUniversPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_fiche_univers_person = _fiche_univers_people(:one)
  end

  test "should get index" do
    get _fiche_univers_people_url
    assert_response :success
  end

  test "should get new" do
    get new__fiche_univers_person_url
    assert_response :success
  end

  test "should create _fiche_univers_person" do
    assert_difference("FicheUniversPerson.count") do
      post _fiche_univers_people_url, params: { _fiche_univers_person: { name: @_fiche_univers_person.name } }
    end

    assert_redirected_to _fiche_univers_person_url(FicheUniversPerson.last)
  end

  test "should show _fiche_univers_person" do
    get _fiche_univers_person_url(@_fiche_univers_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__fiche_univers_person_url(@_fiche_univers_person)
    assert_response :success
  end

  test "should update _fiche_univers_person" do
    patch _fiche_univers_person_url(@_fiche_univers_person), params: { _fiche_univers_person: { name: @_fiche_univers_person.name } }
    assert_redirected_to _fiche_univers_person_url(@_fiche_univers_person)
  end

  test "should destroy _fiche_univers_person" do
    assert_difference("FicheUniversPerson.count", -1) do
      delete _fiche_univers_person_url(@_fiche_univers_person)
    end

    assert_redirected_to _fiche_univers_people_url
  end
end
