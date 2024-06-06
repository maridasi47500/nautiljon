require "test_helper"

class BrevesActualiteMinisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_actualite_mini = _breves_actualite_minis(:one)
  end

  test "should get index" do
    get _breves_actualite_minis_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_actualite_mini_url
    assert_response :success
  end

  test "should create _breves_actualite_mini" do
    assert_difference("BrevesActualiteMini.count") do
      post _breves_actualite_minis_url, params: { _breves_actualite_mini: { name: @_breves_actualite_mini.name } }
    end

    assert_redirected_to _breves_actualite_mini_url(BrevesActualiteMini.last)
  end

  test "should show _breves_actualite_mini" do
    get _breves_actualite_mini_url(@_breves_actualite_mini)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_actualite_mini_url(@_breves_actualite_mini)
    assert_response :success
  end

  test "should update _breves_actualite_mini" do
    patch _breves_actualite_mini_url(@_breves_actualite_mini), params: { _breves_actualite_mini: { name: @_breves_actualite_mini.name } }
    assert_redirected_to _breves_actualite_mini_url(@_breves_actualite_mini)
  end

  test "should destroy _breves_actualite_mini" do
    assert_difference("BrevesActualiteMini.count", -1) do
      delete _breves_actualite_mini_url(@_breves_actualite_mini)
    end

    assert_redirected_to _breves_actualite_minis_url
  end
end
