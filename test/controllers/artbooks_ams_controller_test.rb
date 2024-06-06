require "test_helper"

class ArtbooksAmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_am = artbooks_ams(:one)
  end

  test "should get index" do
    get artbooks_ams_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_am_url
    assert_response :success
  end

  test "should create artbooks_am" do
    assert_difference("ArtbooksAm.count") do
      post artbooks_ams_url, params: { artbooks_am: { name: @artbooks_am.name } }
    end

    assert_redirected_to artbooks_am_url(ArtbooksAm.last)
  end

  test "should show artbooks_am" do
    get artbooks_am_url(@artbooks_am)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_am_url(@artbooks_am)
    assert_response :success
  end

  test "should update artbooks_am" do
    patch artbooks_am_url(@artbooks_am), params: { artbooks_am: { name: @artbooks_am.name } }
    assert_redirected_to artbooks_am_url(@artbooks_am)
  end

  test "should destroy artbooks_am" do
    assert_difference("ArtbooksAm.count", -1) do
      delete artbooks_am_url(@artbooks_am)
    end

    assert_redirected_to artbooks_ams_url
  end
end
