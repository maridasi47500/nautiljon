require "test_helper"

class LivresTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_type = _livres_types(:one)
  end

  test "should get index" do
    get _livres_types_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_type_url
    assert_response :success
  end

  test "should create _livres_type" do
    assert_difference("LivresType.count") do
      post _livres_types_url, params: { _livres_type: { name: @_livres_type.name } }
    end

    assert_redirected_to _livres_type_url(LivresType.last)
  end

  test "should show _livres_type" do
    get _livres_type_url(@_livres_type)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_type_url(@_livres_type)
    assert_response :success
  end

  test "should update _livres_type" do
    patch _livres_type_url(@_livres_type), params: { _livres_type: { name: @_livres_type.name } }
    assert_redirected_to _livres_type_url(@_livres_type)
  end

  test "should destroy _livres_type" do
    assert_difference("LivresType.count", -1) do
      delete _livres_type_url(@_livres_type)
    end

    assert_redirected_to _livres_types_url
  end
end
