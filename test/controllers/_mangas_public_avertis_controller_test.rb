require "test_helper"

class MangasPublicAvertisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_public_averti = _mangas_public_avertis(:one)
  end

  test "should get index" do
    get _mangas_public_avertis_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_public_averti_url
    assert_response :success
  end

  test "should create _mangas_public_averti" do
    assert_difference("MangasPublicAverti.count") do
      post _mangas_public_avertis_url, params: { _mangas_public_averti: { name: @_mangas_public_averti.name } }
    end

    assert_redirected_to _mangas_public_averti_url(MangasPublicAverti.last)
  end

  test "should show _mangas_public_averti" do
    get _mangas_public_averti_url(@_mangas_public_averti)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_public_averti_url(@_mangas_public_averti)
    assert_response :success
  end

  test "should update _mangas_public_averti" do
    patch _mangas_public_averti_url(@_mangas_public_averti), params: { _mangas_public_averti: { name: @_mangas_public_averti.name } }
    assert_redirected_to _mangas_public_averti_url(@_mangas_public_averti)
  end

  test "should destroy _mangas_public_averti" do
    assert_difference("MangasPublicAverti.count", -1) do
      delete _mangas_public_averti_url(@_mangas_public_averti)
    end

    assert_redirected_to _mangas_public_avertis_url
  end
end
