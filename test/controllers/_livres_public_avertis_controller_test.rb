require "test_helper"

class LivresPublicAvertisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_public_averti = _livres_public_avertis(:one)
  end

  test "should get index" do
    get _livres_public_avertis_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_public_averti_url
    assert_response :success
  end

  test "should create _livres_public_averti" do
    assert_difference("LivresPublicAverti.count") do
      post _livres_public_avertis_url, params: { _livres_public_averti: { name: @_livres_public_averti.name } }
    end

    assert_redirected_to _livres_public_averti_url(LivresPublicAverti.last)
  end

  test "should show _livres_public_averti" do
    get _livres_public_averti_url(@_livres_public_averti)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_public_averti_url(@_livres_public_averti)
    assert_response :success
  end

  test "should update _livres_public_averti" do
    patch _livres_public_averti_url(@_livres_public_averti), params: { _livres_public_averti: { name: @_livres_public_averti.name } }
    assert_redirected_to _livres_public_averti_url(@_livres_public_averti)
  end

  test "should destroy _livres_public_averti" do
    assert_difference("LivresPublicAverti.count", -1) do
      delete _livres_public_averti_url(@_livres_public_averti)
    end

    assert_redirected_to _livres_public_avertis_url
  end
end
