require "test_helper"

class CdsDramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_cds_drama = _cds_dramas(:one)
  end

  test "should get index" do
    get _cds_dramas_url
    assert_response :success
  end

  test "should get new" do
    get new__cds_drama_url
    assert_response :success
  end

  test "should create _cds_drama" do
    assert_difference("CdsDrama.count") do
      post _cds_dramas_url, params: { _cds_drama: { name: @_cds_drama.name } }
    end

    assert_redirected_to _cds_drama_url(CdsDrama.last)
  end

  test "should show _cds_drama" do
    get _cds_drama_url(@_cds_drama)
    assert_response :success
  end

  test "should get edit" do
    get edit__cds_drama_url(@_cds_drama)
    assert_response :success
  end

  test "should update _cds_drama" do
    patch _cds_drama_url(@_cds_drama), params: { _cds_drama: { name: @_cds_drama.name } }
    assert_redirected_to _cds_drama_url(@_cds_drama)
  end

  test "should destroy _cds_drama" do
    assert_difference("CdsDrama.count", -1) do
      delete _cds_drama_url(@_cds_drama)
    end

    assert_redirected_to _cds_dramas_url
  end
end
