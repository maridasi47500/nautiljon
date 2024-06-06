require "test_helper"

class GeneriquesGenericsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_generiques_generic = _generiques_generics(:one)
  end

  test "should get index" do
    get _generiques_generics_url
    assert_response :success
  end

  test "should get new" do
    get new__generiques_generic_url
    assert_response :success
  end

  test "should create _generiques_generic" do
    assert_difference("GeneriquesGeneric.count") do
      post _generiques_generics_url, params: { _generiques_generic: { name: @_generiques_generic.name } }
    end

    assert_redirected_to _generiques_generic_url(GeneriquesGeneric.last)
  end

  test "should show _generiques_generic" do
    get _generiques_generic_url(@_generiques_generic)
    assert_response :success
  end

  test "should get edit" do
    get edit__generiques_generic_url(@_generiques_generic)
    assert_response :success
  end

  test "should update _generiques_generic" do
    patch _generiques_generic_url(@_generiques_generic), params: { _generiques_generic: { name: @_generiques_generic.name } }
    assert_redirected_to _generiques_generic_url(@_generiques_generic)
  end

  test "should destroy _generiques_generic" do
    assert_difference("GeneriquesGeneric.count", -1) do
      delete _generiques_generic_url(@_generiques_generic)
    end

    assert_redirected_to _generiques_generics_url
  end
end
