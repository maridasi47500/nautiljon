require "test_helper"

class AnimesLnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_ln = animes_lns(:one)
  end

  test "should get index" do
    get animes_lns_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_ln_url
    assert_response :success
  end

  test "should create animes_ln" do
    assert_difference("AnimesLn.count") do
      post animes_lns_url, params: { animes_ln: { name: @animes_ln.name } }
    end

    assert_redirected_to animes_ln_url(AnimesLn.last)
  end

  test "should show animes_ln" do
    get animes_ln_url(@animes_ln)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_ln_url(@animes_ln)
    assert_response :success
  end

  test "should update animes_ln" do
    patch animes_ln_url(@animes_ln), params: { animes_ln: { name: @animes_ln.name } }
    assert_redirected_to animes_ln_url(@animes_ln)
  end

  test "should destroy animes_ln" do
    assert_difference("AnimesLn.count", -1) do
      delete animes_ln_url(@animes_ln)
    end

    assert_redirected_to animes_lns_url
  end
end
