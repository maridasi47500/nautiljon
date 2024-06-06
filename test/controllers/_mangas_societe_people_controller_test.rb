require "test_helper"

class MangasSocietePeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_societe_person = _mangas_societe_people(:one)
  end

  test "should get index" do
    get _mangas_societe_people_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_societe_person_url
    assert_response :success
  end

  test "should create _mangas_societe_person" do
    assert_difference("MangasSocietePerson.count") do
      post _mangas_societe_people_url, params: { _mangas_societe_person: { name: @_mangas_societe_person.name } }
    end

    assert_redirected_to _mangas_societe_person_url(MangasSocietePerson.last)
  end

  test "should show _mangas_societe_person" do
    get _mangas_societe_person_url(@_mangas_societe_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_societe_person_url(@_mangas_societe_person)
    assert_response :success
  end

  test "should update _mangas_societe_person" do
    patch _mangas_societe_person_url(@_mangas_societe_person), params: { _mangas_societe_person: { name: @_mangas_societe_person.name } }
    assert_redirected_to _mangas_societe_person_url(@_mangas_societe_person)
  end

  test "should destroy _mangas_societe_person" do
    assert_difference("MangasSocietePerson.count", -1) do
      delete _mangas_societe_person_url(@_mangas_societe_person)
    end

    assert_redirected_to _mangas_societe_people_url
  end
end
