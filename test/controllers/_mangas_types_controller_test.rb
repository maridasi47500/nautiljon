require "test_helper"

class MangasTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_type = _mangas_types(:one)
  end

  test "should get index" do
    get _mangas_types_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_type_url
    assert_response :success
  end

  test "should create _mangas_type" do
    assert_difference("MangasType.count") do
      post _mangas_types_url, params: { _mangas_type: { name: @_mangas_type.name } }
    end

    assert_redirected_to _mangas_type_url(MangasType.last)
  end

  test "should show _mangas_type" do
    get _mangas_type_url(@_mangas_type)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_type_url(@_mangas_type)
    assert_response :success
  end

  test "should update _mangas_type" do
    patch _mangas_type_url(@_mangas_type), params: { _mangas_type: { name: @_mangas_type.name } }
    assert_redirected_to _mangas_type_url(@_mangas_type)
  end

  test "should destroy _mangas_type" do
    assert_difference("MangasType.count", -1) do
      delete _mangas_type_url(@_mangas_type)
    end

    assert_redirected_to _mangas_types_url
  end
end
