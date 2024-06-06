require "test_helper"

class CdsBonusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_cds_bonu = _cds_bonus(:one)
  end

  test "should get index" do
    get _cds_bonus_url
    assert_response :success
  end

  test "should get new" do
    get new__cds_bonu_url
    assert_response :success
  end

  test "should create _cds_bonu" do
    assert_difference("CdsBonu.count") do
      post _cds_bonus_url, params: { _cds_bonu: { name: @_cds_bonu.name } }
    end

    assert_redirected_to _cds_bonu_url(CdsBonu.last)
  end

  test "should show _cds_bonu" do
    get _cds_bonu_url(@_cds_bonu)
    assert_response :success
  end

  test "should get edit" do
    get edit__cds_bonu_url(@_cds_bonu)
    assert_response :success
  end

  test "should update _cds_bonu" do
    patch _cds_bonu_url(@_cds_bonu), params: { _cds_bonu: { name: @_cds_bonu.name } }
    assert_redirected_to _cds_bonu_url(@_cds_bonu)
  end

  test "should destroy _cds_bonu" do
    assert_difference("CdsBonu.count", -1) do
      delete _cds_bonu_url(@_cds_bonu)
    end

    assert_redirected_to _cds_bonus_url
  end
end
