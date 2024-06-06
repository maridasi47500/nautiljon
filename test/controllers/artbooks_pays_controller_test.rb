require "test_helper"

class ArtbooksPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_pay = artbooks_pays(:one)
  end

  test "should get index" do
    get artbooks_pays_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_pay_url
    assert_response :success
  end

  test "should create artbooks_pay" do
    assert_difference("ArtbooksPay.count") do
      post artbooks_pays_url, params: { artbooks_pay: { name: @artbooks_pay.name } }
    end

    assert_redirected_to artbooks_pay_url(ArtbooksPay.last)
  end

  test "should show artbooks_pay" do
    get artbooks_pay_url(@artbooks_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_pay_url(@artbooks_pay)
    assert_response :success
  end

  test "should update artbooks_pay" do
    patch artbooks_pay_url(@artbooks_pay), params: { artbooks_pay: { name: @artbooks_pay.name } }
    assert_redirected_to artbooks_pay_url(@artbooks_pay)
  end

  test "should destroy artbooks_pay" do
    assert_difference("ArtbooksPay.count", -1) do
      delete artbooks_pay_url(@artbooks_pay)
    end

    assert_redirected_to artbooks_pays_url
  end
end
