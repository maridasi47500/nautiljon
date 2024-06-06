require "test_helper"

class AnimesPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_person = animes_people(:one)
  end

  test "should get index" do
    get animes_people_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_person_url
    assert_response :success
  end

  test "should create animes_person" do
    assert_difference("AnimesPerson.count") do
      post animes_people_url, params: { animes_person: { name: @animes_person.name } }
    end

    assert_redirected_to animes_person_url(AnimesPerson.last)
  end

  test "should show animes_person" do
    get animes_person_url(@animes_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_person_url(@animes_person)
    assert_response :success
  end

  test "should update animes_person" do
    patch animes_person_url(@animes_person), params: { animes_person: { name: @animes_person.name } }
    assert_redirected_to animes_person_url(@animes_person)
  end

  test "should destroy animes_person" do
    assert_difference("AnimesPerson.count", -1) do
      delete animes_person_url(@animes_person)
    end

    assert_redirected_to animes_people_url
  end
end
