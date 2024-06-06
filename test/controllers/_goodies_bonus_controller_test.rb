require "test_helper"

class GoodiesBonusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_bonu = _goodies_bonus(:one)
  end

  test "should get index" do
    get _goodies_bonus_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_bonu_url
    assert_response :success
  end

  test "should create _goodies_bonu" do
    assert_difference("GoodiesBonu.count") do
      post _goodies_bonus_url, params: { _goodies_bonu: { name: @_goodies_bonu.name } }
    end

    assert_redirected_to _goodies_bonu_url(GoodiesBonu.last)
  end

  test "should show _goodies_bonu" do
    get _goodies_bonu_url(@_goodies_bonu)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_bonu_url(@_goodies_bonu)
    assert_response :success
  end

  test "should update _goodies_bonu" do
    patch _goodies_bonu_url(@_goodies_bonu), params: { _goodies_bonu: { name: @_goodies_bonu.name } }
    assert_redirected_to _goodies_bonu_url(@_goodies_bonu)
  end

  test "should destroy _goodies_bonu" do
    assert_difference("GoodiesBonu.count", -1) do
      delete _goodies_bonu_url(@_goodies_bonu)
    end

    assert_redirected_to _goodies_bonus_url
  end
end
