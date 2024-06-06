require "test_helper"

class AnimesActualitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_actualite = animes_actualites(:one)
  end

  test "should get index" do
    get animes_actualites_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_actualite_url
    assert_response :success
  end

  test "should create animes_actualite" do
    assert_difference("AnimesActualite.count") do
      post animes_actualites_url, params: { animes_actualite: { name: @animes_actualite.name } }
    end

    assert_redirected_to animes_actualite_url(AnimesActualite.last)
  end

  test "should show animes_actualite" do
    get animes_actualite_url(@animes_actualite)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_actualite_url(@animes_actualite)
    assert_response :success
  end

  test "should update animes_actualite" do
    patch animes_actualite_url(@animes_actualite), params: { animes_actualite: { name: @animes_actualite.name } }
    assert_redirected_to animes_actualite_url(@animes_actualite)
  end

  test "should destroy animes_actualite" do
    assert_difference("AnimesActualite.count", -1) do
      delete animes_actualite_url(@animes_actualite)
    end

    assert_redirected_to animes_actualites_url
  end
end
