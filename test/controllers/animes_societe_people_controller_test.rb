require "test_helper"

class AnimesSocietePeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_societe_person = animes_societe_people(:one)
  end

  test "should get index" do
    get animes_societe_people_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_societe_person_url
    assert_response :success
  end

  test "should create animes_societe_person" do
    assert_difference("AnimesSocietePerson.count") do
      post animes_societe_people_url, params: { animes_societe_person: { name: @animes_societe_person.name } }
    end

    assert_redirected_to animes_societe_person_url(AnimesSocietePerson.last)
  end

  test "should show animes_societe_person" do
    get animes_societe_person_url(@animes_societe_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_societe_person_url(@animes_societe_person)
    assert_response :success
  end

  test "should update animes_societe_person" do
    patch animes_societe_person_url(@animes_societe_person), params: { animes_societe_person: { name: @animes_societe_person.name } }
    assert_redirected_to animes_societe_person_url(@animes_societe_person)
  end

  test "should destroy animes_societe_person" do
    assert_difference("AnimesSocietePerson.count", -1) do
      delete animes_societe_person_url(@animes_societe_person)
    end

    assert_redirected_to animes_societe_people_url
  end
end
