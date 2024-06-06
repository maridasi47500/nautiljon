require "test_helper"

class CdsMonnaiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_cds_monnaie = _cds_monnaies(:one)
  end

  test "should get index" do
    get _cds_monnaies_url
    assert_response :success
  end

  test "should get new" do
    get new__cds_monnaie_url
    assert_response :success
  end

  test "should create _cds_monnaie" do
    assert_difference("CdsMonnaie.count") do
      post _cds_monnaies_url, params: { _cds_monnaie: { name: @_cds_monnaie.name } }
    end

    assert_redirected_to _cds_monnaie_url(CdsMonnaie.last)
  end

  test "should show _cds_monnaie" do
    get _cds_monnaie_url(@_cds_monnaie)
    assert_response :success
  end

  test "should get edit" do
    get edit__cds_monnaie_url(@_cds_monnaie)
    assert_response :success
  end

  test "should update _cds_monnaie" do
    patch _cds_monnaie_url(@_cds_monnaie), params: { _cds_monnaie: { name: @_cds_monnaie.name } }
    assert_redirected_to _cds_monnaie_url(@_cds_monnaie)
  end

  test "should destroy _cds_monnaie" do
    assert_difference("CdsMonnaie.count", -1) do
      delete _cds_monnaie_url(@_cds_monnaie)
    end

    assert_redirected_to _cds_monnaies_url
  end
end
