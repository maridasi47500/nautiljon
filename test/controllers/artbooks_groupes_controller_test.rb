require "test_helper"

class ArtbooksGroupesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_groupe = artbooks_groupes(:one)
  end

  test "should get index" do
    get artbooks_groupes_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_groupe_url
    assert_response :success
  end

  test "should create artbooks_groupe" do
    assert_difference("ArtbooksGroupe.count") do
      post artbooks_groupes_url, params: { artbooks_groupe: { name: @artbooks_groupe.name } }
    end

    assert_redirected_to artbooks_groupe_url(ArtbooksGroupe.last)
  end

  test "should show artbooks_groupe" do
    get artbooks_groupe_url(@artbooks_groupe)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_groupe_url(@artbooks_groupe)
    assert_response :success
  end

  test "should update artbooks_groupe" do
    patch artbooks_groupe_url(@artbooks_groupe), params: { artbooks_groupe: { name: @artbooks_groupe.name } }
    assert_redirected_to artbooks_groupe_url(@artbooks_groupe)
  end

  test "should destroy artbooks_groupe" do
    assert_difference("ArtbooksGroupe.count", -1) do
      delete artbooks_groupe_url(@artbooks_groupe)
    end

    assert_redirected_to artbooks_groupes_url
  end
end
