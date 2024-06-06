require "test_helper"

class ArtbooksActualitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_actualite = artbooks_actualites(:one)
  end

  test "should get index" do
    get artbooks_actualites_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_actualite_url
    assert_response :success
  end

  test "should create artbooks_actualite" do
    assert_difference("ArtbooksActualite.count") do
      post artbooks_actualites_url, params: { artbooks_actualite: { name: @artbooks_actualite.name } }
    end

    assert_redirected_to artbooks_actualite_url(ArtbooksActualite.last)
  end

  test "should show artbooks_actualite" do
    get artbooks_actualite_url(@artbooks_actualite)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_actualite_url(@artbooks_actualite)
    assert_response :success
  end

  test "should update artbooks_actualite" do
    patch artbooks_actualite_url(@artbooks_actualite), params: { artbooks_actualite: { name: @artbooks_actualite.name } }
    assert_redirected_to artbooks_actualite_url(@artbooks_actualite)
  end

  test "should destroy artbooks_actualite" do
    assert_difference("ArtbooksActualite.count", -1) do
      delete artbooks_actualite_url(@artbooks_actualite)
    end

    assert_redirected_to artbooks_actualites_url
  end
end
