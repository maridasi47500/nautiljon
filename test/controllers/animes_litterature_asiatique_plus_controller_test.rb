require "test_helper"

class AnimesLitteratureAsiatiquePlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_litterature_asiatique_plu = animes_litterature_asiatique_plus(:one)
  end

  test "should get index" do
    get animes_litterature_asiatique_plus_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_litterature_asiatique_plu_url
    assert_response :success
  end

  test "should create animes_litterature_asiatique_plu" do
    assert_difference("AnimesLitteratureAsiatiquePlu.count") do
      post animes_litterature_asiatique_plus_url, params: { animes_litterature_asiatique_plu: { name: @animes_litterature_asiatique_plu.name } }
    end

    assert_redirected_to animes_litterature_asiatique_plu_url(AnimesLitteratureAsiatiquePlu.last)
  end

  test "should show animes_litterature_asiatique_plu" do
    get animes_litterature_asiatique_plu_url(@animes_litterature_asiatique_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_litterature_asiatique_plu_url(@animes_litterature_asiatique_plu)
    assert_response :success
  end

  test "should update animes_litterature_asiatique_plu" do
    patch animes_litterature_asiatique_plu_url(@animes_litterature_asiatique_plu), params: { animes_litterature_asiatique_plu: { name: @animes_litterature_asiatique_plu.name } }
    assert_redirected_to animes_litterature_asiatique_plu_url(@animes_litterature_asiatique_plu)
  end

  test "should destroy animes_litterature_asiatique_plu" do
    assert_difference("AnimesLitteratureAsiatiquePlu.count", -1) do
      delete animes_litterature_asiatique_plu_url(@animes_litterature_asiatique_plu)
    end

    assert_redirected_to animes_litterature_asiatique_plus_url
  end
end
