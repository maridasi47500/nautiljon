require "test_helper"

class MangasPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_person = _mangas_people(:one)
  end

  test "should get index" do
    get _mangas_people_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_person_url
    assert_response :success
  end

  test "should create _mangas_person" do
    assert_difference("MangasPerson.count") do
      post _mangas_people_url, params: { _mangas_person: { name: @_mangas_person.name } }
    end

    assert_redirected_to _mangas_person_url(MangasPerson.last)
  end

  test "should show _mangas_person" do
    get _mangas_person_url(@_mangas_person)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_person_url(@_mangas_person)
    assert_response :success
  end

  test "should update _mangas_person" do
    patch _mangas_person_url(@_mangas_person), params: { _mangas_person: { name: @_mangas_person.name } }
    assert_redirected_to _mangas_person_url(@_mangas_person)
  end

  test "should destroy _mangas_person" do
    assert_difference("MangasPerson.count", -1) do
      delete _mangas_person_url(@_mangas_person)
    end

    assert_redirected_to _mangas_people_url
  end
end
