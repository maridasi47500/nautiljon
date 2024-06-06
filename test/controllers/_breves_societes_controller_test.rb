require "test_helper"

class BrevesSocietesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_societe = _breves_societes(:one)
  end

  test "should get index" do
    get _breves_societes_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_societe_url
    assert_response :success
  end

  test "should create _breves_societe" do
    assert_difference("BrevesSociete.count") do
      post _breves_societes_url, params: { _breves_societe: { name: @_breves_societe.name } }
    end

    assert_redirected_to _breves_societe_url(BrevesSociete.last)
  end

  test "should show _breves_societe" do
    get _breves_societe_url(@_breves_societe)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_societe_url(@_breves_societe)
    assert_response :success
  end

  test "should update _breves_societe" do
    patch _breves_societe_url(@_breves_societe), params: { _breves_societe: { name: @_breves_societe.name } }
    assert_redirected_to _breves_societe_url(@_breves_societe)
  end

  test "should destroy _breves_societe" do
    assert_difference("BrevesSociete.count", -1) do
      delete _breves_societe_url(@_breves_societe)
    end

    assert_redirected_to _breves_societes_url
  end
end
