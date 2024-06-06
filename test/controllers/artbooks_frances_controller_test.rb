require "test_helper"

class ArtbooksFrancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_france = artbooks_frances(:one)
  end

  test "should get index" do
    get artbooks_frances_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_france_url
    assert_response :success
  end

  test "should create artbooks_france" do
    assert_difference("ArtbooksFrance.count") do
      post artbooks_frances_url, params: { artbooks_france: { name: @artbooks_france.name } }
    end

    assert_redirected_to artbooks_france_url(ArtbooksFrance.last)
  end

  test "should show artbooks_france" do
    get artbooks_france_url(@artbooks_france)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_france_url(@artbooks_france)
    assert_response :success
  end

  test "should update artbooks_france" do
    patch artbooks_france_url(@artbooks_france), params: { artbooks_france: { name: @artbooks_france.name } }
    assert_redirected_to artbooks_france_url(@artbooks_france)
  end

  test "should destroy artbooks_france" do
    assert_difference("ArtbooksFrance.count", -1) do
      delete artbooks_france_url(@artbooks_france)
    end

    assert_redirected_to artbooks_frances_url
  end
end
