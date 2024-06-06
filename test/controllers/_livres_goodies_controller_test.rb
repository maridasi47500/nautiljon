require "test_helper"

class LivresGoodiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_goody = _livres_goodies(:one)
  end

  test "should get index" do
    get _livres_goodies_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_goody_url
    assert_response :success
  end

  test "should create _livres_goody" do
    assert_difference("LivresGoody.count") do
      post _livres_goodies_url, params: { _livres_goody: { name: @_livres_goody.name } }
    end

    assert_redirected_to _livres_goody_url(LivresGoody.last)
  end

  test "should show _livres_goody" do
    get _livres_goody_url(@_livres_goody)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_goody_url(@_livres_goody)
    assert_response :success
  end

  test "should update _livres_goody" do
    patch _livres_goody_url(@_livres_goody), params: { _livres_goody: { name: @_livres_goody.name } }
    assert_redirected_to _livres_goody_url(@_livres_goody)
  end

  test "should destroy _livres_goody" do
    assert_difference("LivresGoody.count", -1) do
      delete _livres_goody_url(@_livres_goody)
    end

    assert_redirected_to _livres_goodies_url
  end
end
