require "test_helper"

class GeneriqueDeJeuVideosStaffPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_generique_de_jeu_videos_staff_person = _generique_de_jeu_videos_staff_people(:one)
  end

  test "should get index" do
    get _generique_de_jeu_videos_staff_people_url
    assert_response :success
  end

  test "should get new" do
    get new__generique_de_jeu_videos_staff_person_url
    assert_response :success
  end

  test "should create _generique_de_jeu_videos_staff_person" do
    assert_difference("GeneriqueDeJeuVideosStaffPerson.count") do
      post _generique_de_jeu_videos_staff_people_url, params: { _generique_de_jeu_videos_staff_person: { name: @_generique_de_jeu_videos_staff_person.name } }
    end

    assert_redirected_to _generique_de_jeu_videos_staff_person_url(GeneriqueDeJeuVideosStaffPerson.last)
  end

  test "should show _generique_de_jeu_videos_staff_person" do
    get _generique_de_jeu_videos_staff_person_url(@_generique_de_jeu_videos_staff_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__generique_de_jeu_videos_staff_person_url(@_generique_de_jeu_videos_staff_person)
    assert_response :success
  end

  test "should update _generique_de_jeu_videos_staff_person" do
    patch _generique_de_jeu_videos_staff_person_url(@_generique_de_jeu_videos_staff_person), params: { _generique_de_jeu_videos_staff_person: { name: @_generique_de_jeu_videos_staff_person.name } }
    assert_redirected_to _generique_de_jeu_videos_staff_person_url(@_generique_de_jeu_videos_staff_person)
  end

  test "should destroy _generique_de_jeu_videos_staff_person" do
    assert_difference("GeneriqueDeJeuVideosStaffPerson.count", -1) do
      delete _generique_de_jeu_videos_staff_person_url(@_generique_de_jeu_videos_staff_person)
    end

    assert_redirected_to _generique_de_jeu_videos_staff_people_url
  end
end
