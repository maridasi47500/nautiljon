require "test_helper"

class FilmsAsiatiquesPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_pay = _films_asiatiques_pays(:one)
  end

  test "should get index" do
    get _films_asiatiques_pays_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_pay_url
    assert_response :success
  end

  test "should create _films_asiatiques_pay" do
    assert_difference("FilmsAsiatiquesPay.count") do
      post _films_asiatiques_pays_url, params: { _films_asiatiques_pay: { name: @_films_asiatiques_pay.name } }
    end

    assert_redirected_to _films_asiatiques_pay_url(FilmsAsiatiquesPay.last)
  end

  test "should show _films_asiatiques_pay" do
    get _films_asiatiques_pay_url(@_films_asiatiques_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_pay_url(@_films_asiatiques_pay)
    assert_response :success
  end

  test "should update _films_asiatiques_pay" do
    patch _films_asiatiques_pay_url(@_films_asiatiques_pay), params: { _films_asiatiques_pay: { name: @_films_asiatiques_pay.name } }
    assert_redirected_to _films_asiatiques_pay_url(@_films_asiatiques_pay)
  end

  test "should destroy _films_asiatiques_pay" do
    assert_difference("FilmsAsiatiquesPay.count", -1) do
      delete _films_asiatiques_pay_url(@_films_asiatiques_pay)
    end

    assert_redirected_to _films_asiatiques_pays_url
  end
end
