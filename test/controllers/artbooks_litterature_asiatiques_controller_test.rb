require "test_helper"

class ArtbooksLitteratureAsiatiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_litterature_asiatique = artbooks_litterature_asiatiques(:one)
  end

  test "should get index" do
    get artbooks_litterature_asiatiques_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_litterature_asiatique_url
    assert_response :success
  end

  test "should create artbooks_litterature_asiatique" do
    assert_difference("ArtbooksLitteratureAsiatique.count") do
      post artbooks_litterature_asiatiques_url, params: { artbooks_litterature_asiatique: { name: @artbooks_litterature_asiatique.name } }
    end

    assert_redirected_to artbooks_litterature_asiatique_url(ArtbooksLitteratureAsiatique.last)
  end

  test "should show artbooks_litterature_asiatique" do
    get artbooks_litterature_asiatique_url(@artbooks_litterature_asiatique)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_litterature_asiatique_url(@artbooks_litterature_asiatique)
    assert_response :success
  end

  test "should update artbooks_litterature_asiatique" do
    patch artbooks_litterature_asiatique_url(@artbooks_litterature_asiatique), params: { artbooks_litterature_asiatique: { name: @artbooks_litterature_asiatique.name } }
    assert_redirected_to artbooks_litterature_asiatique_url(@artbooks_litterature_asiatique)
  end

  test "should destroy artbooks_litterature_asiatique" do
    assert_difference("ArtbooksLitteratureAsiatique.count", -1) do
      delete artbooks_litterature_asiatique_url(@artbooks_litterature_asiatique)
    end

    assert_redirected_to artbooks_litterature_asiatiques_url
  end
end
