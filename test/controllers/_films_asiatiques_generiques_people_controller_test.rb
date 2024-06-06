require "test_helper"

class FilmsAsiatiquesGeneriquesPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_generiques_person = _films_asiatiques_generiques_people(:one)
  end

  test "should get index" do
    get _films_asiatiques_generiques_people_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_generiques_person_url
    assert_response :success
  end

  test "should create _films_asiatiques_generiques_person" do
    assert_difference("FilmsAsiatiquesGeneriquesPerson.count") do
      post _films_asiatiques_generiques_people_url, params: { _films_asiatiques_generiques_person: { name: @_films_asiatiques_generiques_person.name } }
    end

    assert_redirected_to _films_asiatiques_generiques_person_url(FilmsAsiatiquesGeneriquesPerson.last)
  end

  test "should show _films_asiatiques_generiques_person" do
    get _films_asiatiques_generiques_person_url(@_films_asiatiques_generiques_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_generiques_person_url(@_films_asiatiques_generiques_person)
    assert_response :success
  end

  test "should update _films_asiatiques_generiques_person" do
    patch _films_asiatiques_generiques_person_url(@_films_asiatiques_generiques_person), params: { _films_asiatiques_generiques_person: { name: @_films_asiatiques_generiques_person.name } }
    assert_redirected_to _films_asiatiques_generiques_person_url(@_films_asiatiques_generiques_person)
  end

  test "should destroy _films_asiatiques_generiques_person" do
    assert_difference("FilmsAsiatiquesGeneriquesPerson.count", -1) do
      delete _films_asiatiques_generiques_person_url(@_films_asiatiques_generiques_person)
    end

    assert_redirected_to _films_asiatiques_generiques_people_url
  end
end
