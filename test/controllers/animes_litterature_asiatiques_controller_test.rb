require "test_helper"

class AnimesLitteratureAsiatiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_litterature_asiatique = animes_litterature_asiatiques(:one)
  end

  test "should get index" do
    get animes_litterature_asiatiques_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_litterature_asiatique_url
    assert_response :success
  end

  test "should create animes_litterature_asiatique" do
    assert_difference("AnimesLitteratureAsiatique.count") do
      post animes_litterature_asiatiques_url, params: { animes_litterature_asiatique: { name: @animes_litterature_asiatique.name } }
    end

    assert_redirected_to animes_litterature_asiatique_url(AnimesLitteratureAsiatique.last)
  end

  test "should show animes_litterature_asiatique" do
    get animes_litterature_asiatique_url(@animes_litterature_asiatique)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_litterature_asiatique_url(@animes_litterature_asiatique)
    assert_response :success
  end

  test "should update animes_litterature_asiatique" do
    patch animes_litterature_asiatique_url(@animes_litterature_asiatique), params: { animes_litterature_asiatique: { name: @animes_litterature_asiatique.name } }
    assert_redirected_to animes_litterature_asiatique_url(@animes_litterature_asiatique)
  end

  test "should destroy animes_litterature_asiatique" do
    assert_difference("AnimesLitteratureAsiatique.count", -1) do
      delete animes_litterature_asiatique_url(@animes_litterature_asiatique)
    end

    assert_redirected_to animes_litterature_asiatiques_url
  end
end
