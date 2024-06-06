require "test_helper"

class ArtbooksActualiteMinisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_actualite_mini = artbooks_actualite_minis(:one)
  end

  test "should get index" do
    get artbooks_actualite_minis_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_actualite_mini_url
    assert_response :success
  end

  test "should create artbooks_actualite_mini" do
    assert_difference("ArtbooksActualiteMini.count") do
      post artbooks_actualite_minis_url, params: { artbooks_actualite_mini: { name: @artbooks_actualite_mini.name } }
    end

    assert_redirected_to artbooks_actualite_mini_url(ArtbooksActualiteMini.last)
  end

  test "should show artbooks_actualite_mini" do
    get artbooks_actualite_mini_url(@artbooks_actualite_mini)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_actualite_mini_url(@artbooks_actualite_mini)
    assert_response :success
  end

  test "should update artbooks_actualite_mini" do
    patch artbooks_actualite_mini_url(@artbooks_actualite_mini), params: { artbooks_actualite_mini: { name: @artbooks_actualite_mini.name } }
    assert_redirected_to artbooks_actualite_mini_url(@artbooks_actualite_mini)
  end

  test "should destroy artbooks_actualite_mini" do
    assert_difference("ArtbooksActualiteMini.count", -1) do
      delete artbooks_actualite_mini_url(@artbooks_actualite_mini)
    end

    assert_redirected_to artbooks_actualite_minis_url
  end
end
