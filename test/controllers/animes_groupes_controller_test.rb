require "test_helper"

class AnimesGroupesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_groupe = animes_groupes(:one)
  end

  test "should get index" do
    get animes_groupes_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_groupe_url
    assert_response :success
  end

  test "should create animes_groupe" do
    assert_difference("AnimesGroupe.count") do
      post animes_groupes_url, params: { animes_groupe: { name: @animes_groupe.name } }
    end

    assert_redirected_to animes_groupe_url(AnimesGroupe.last)
  end

  test "should show animes_groupe" do
    get animes_groupe_url(@animes_groupe)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_groupe_url(@animes_groupe)
    assert_response :success
  end

  test "should update animes_groupe" do
    patch animes_groupe_url(@animes_groupe), params: { animes_groupe: { name: @animes_groupe.name } }
    assert_redirected_to animes_groupe_url(@animes_groupe)
  end

  test "should destroy animes_groupe" do
    assert_difference("AnimesGroupe.count", -1) do
      delete animes_groupe_url(@animes_groupe)
    end

    assert_redirected_to animes_groupes_url
  end
end
