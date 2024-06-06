require "test_helper"

class AnimesPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_pay = animes_pays(:one)
  end

  test "should get index" do
    get animes_pays_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_pay_url
    assert_response :success
  end

  test "should create animes_pay" do
    assert_difference("AnimesPay.count") do
      post animes_pays_url, params: { animes_pay: { name: @animes_pay.name } }
    end

    assert_redirected_to animes_pay_url(AnimesPay.last)
  end

  test "should show animes_pay" do
    get animes_pay_url(@animes_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_pay_url(@animes_pay)
    assert_response :success
  end

  test "should update animes_pay" do
    patch animes_pay_url(@animes_pay), params: { animes_pay: { name: @animes_pay.name } }
    assert_redirected_to animes_pay_url(@animes_pay)
  end

  test "should destroy animes_pay" do
    assert_difference("AnimesPay.count", -1) do
      delete animes_pay_url(@animes_pay)
    end

    assert_redirected_to animes_pays_url
  end
end
