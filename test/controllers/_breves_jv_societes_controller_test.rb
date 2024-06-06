require "test_helper"

class BrevesJvSocietesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_jv_societe = _breves_jv_societes(:one)
  end

  test "should get index" do
    get _breves_jv_societes_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_jv_societe_url
    assert_response :success
  end

  test "should create _breves_jv_societe" do
    assert_difference("BrevesJvSociete.count") do
      post _breves_jv_societes_url, params: { _breves_jv_societe: { name: @_breves_jv_societe.name } }
    end

    assert_redirected_to _breves_jv_societe_url(BrevesJvSociete.last)
  end

  test "should show _breves_jv_societe" do
    get _breves_jv_societe_url(@_breves_jv_societe)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_jv_societe_url(@_breves_jv_societe)
    assert_response :success
  end

  test "should update _breves_jv_societe" do
    patch _breves_jv_societe_url(@_breves_jv_societe), params: { _breves_jv_societe: { name: @_breves_jv_societe.name } }
    assert_redirected_to _breves_jv_societe_url(@_breves_jv_societe)
  end

  test "should destroy _breves_jv_societe" do
    assert_difference("BrevesJvSociete.count", -1) do
      delete _breves_jv_societe_url(@_breves_jv_societe)
    end

    assert_redirected_to _breves_jv_societes_url
  end
end
