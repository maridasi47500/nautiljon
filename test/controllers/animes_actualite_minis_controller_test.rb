require "test_helper"

class AnimesActualiteMinisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_actualite_mini = animes_actualite_minis(:one)
  end

  test "should get index" do
    get animes_actualite_minis_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_actualite_mini_url
    assert_response :success
  end

  test "should create animes_actualite_mini" do
    assert_difference("AnimesActualiteMini.count") do
      post animes_actualite_minis_url, params: { animes_actualite_mini: { name: @animes_actualite_mini.name } }
    end

    assert_redirected_to animes_actualite_mini_url(AnimesActualiteMini.last)
  end

  test "should show animes_actualite_mini" do
    get animes_actualite_mini_url(@animes_actualite_mini)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_actualite_mini_url(@animes_actualite_mini)
    assert_response :success
  end

  test "should update animes_actualite_mini" do
    patch animes_actualite_mini_url(@animes_actualite_mini), params: { animes_actualite_mini: { name: @animes_actualite_mini.name } }
    assert_redirected_to animes_actualite_mini_url(@animes_actualite_mini)
  end

  test "should destroy animes_actualite_mini" do
    assert_difference("AnimesActualiteMini.count", -1) do
      delete animes_actualite_mini_url(@animes_actualite_mini)
    end

    assert_redirected_to animes_actualite_minis_url
  end
end
