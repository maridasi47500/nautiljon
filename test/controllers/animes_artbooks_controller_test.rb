require "test_helper"

class AnimesArtbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_artbook = animes_artbooks(:one)
  end

  test "should get index" do
    get animes_artbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_artbook_url
    assert_response :success
  end

  test "should create animes_artbook" do
    assert_difference("AnimesArtbook.count") do
      post animes_artbooks_url, params: { animes_artbook: { name: @animes_artbook.name } }
    end

    assert_redirected_to animes_artbook_url(AnimesArtbook.last)
  end

  test "should show animes_artbook" do
    get animes_artbook_url(@animes_artbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_artbook_url(@animes_artbook)
    assert_response :success
  end

  test "should update animes_artbook" do
    patch animes_artbook_url(@animes_artbook), params: { animes_artbook: { name: @animes_artbook.name } }
    assert_redirected_to animes_artbook_url(@animes_artbook)
  end

  test "should destroy animes_artbook" do
    assert_difference("AnimesArtbook.count", -1) do
      delete animes_artbook_url(@animes_artbook)
    end

    assert_redirected_to animes_artbooks_url
  end
end
