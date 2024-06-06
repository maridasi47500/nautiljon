require "test_helper"

class PersonnagesDeJeuxVideosDoubleurPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnages_de_jeux_videos_doubleur_person = _personnages_de_jeux_videos_doubleur_people(:one)
  end

  test "should get index" do
    get _personnages_de_jeux_videos_doubleur_people_url
    assert_response :success
  end

  test "should get new" do
    get new__personnages_de_jeux_videos_doubleur_person_url
    assert_response :success
  end

  test "should create _personnages_de_jeux_videos_doubleur_person" do
    assert_difference("PersonnagesDeJeuxVideosDoubleurPerson.count") do
      post _personnages_de_jeux_videos_doubleur_people_url, params: { _personnages_de_jeux_videos_doubleur_person: { name: @_personnages_de_jeux_videos_doubleur_person.name } }
    end

    assert_redirected_to _personnages_de_jeux_videos_doubleur_person_url(PersonnagesDeJeuxVideosDoubleurPerson.last)
  end

  test "should show _personnages_de_jeux_videos_doubleur_person" do
    get _personnages_de_jeux_videos_doubleur_person_url(@_personnages_de_jeux_videos_doubleur_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnages_de_jeux_videos_doubleur_person_url(@_personnages_de_jeux_videos_doubleur_person)
    assert_response :success
  end

  test "should update _personnages_de_jeux_videos_doubleur_person" do
    patch _personnages_de_jeux_videos_doubleur_person_url(@_personnages_de_jeux_videos_doubleur_person), params: { _personnages_de_jeux_videos_doubleur_person: { name: @_personnages_de_jeux_videos_doubleur_person.name } }
    assert_redirected_to _personnages_de_jeux_videos_doubleur_person_url(@_personnages_de_jeux_videos_doubleur_person)
  end

  test "should destroy _personnages_de_jeux_videos_doubleur_person" do
    assert_difference("PersonnagesDeJeuxVideosDoubleurPerson.count", -1) do
      delete _personnages_de_jeux_videos_doubleur_person_url(@_personnages_de_jeux_videos_doubleur_person)
    end

    assert_redirected_to _personnages_de_jeux_videos_doubleur_people_url
  end
end
