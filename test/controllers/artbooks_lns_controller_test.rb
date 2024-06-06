require "test_helper"

class ArtbooksLnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_ln = artbooks_lns(:one)
  end

  test "should get index" do
    get artbooks_lns_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_ln_url
    assert_response :success
  end

  test "should create artbooks_ln" do
    assert_difference("ArtbooksLn.count") do
      post artbooks_lns_url, params: { artbooks_ln: { name: @artbooks_ln.name } }
    end

    assert_redirected_to artbooks_ln_url(ArtbooksLn.last)
  end

  test "should show artbooks_ln" do
    get artbooks_ln_url(@artbooks_ln)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_ln_url(@artbooks_ln)
    assert_response :success
  end

  test "should update artbooks_ln" do
    patch artbooks_ln_url(@artbooks_ln), params: { artbooks_ln: { name: @artbooks_ln.name } }
    assert_redirected_to artbooks_ln_url(@artbooks_ln)
  end

  test "should destroy artbooks_ln" do
    assert_difference("ArtbooksLn.count", -1) do
      delete artbooks_ln_url(@artbooks_ln)
    end

    assert_redirected_to artbooks_lns_url
  end
end
