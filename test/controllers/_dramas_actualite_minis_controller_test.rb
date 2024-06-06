require "test_helper"

class DramasActualiteMinisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_actualite_mini = _dramas_actualite_minis(:one)
  end

  test "should get index" do
    get _dramas_actualite_minis_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_actualite_mini_url
    assert_response :success
  end

  test "should create _dramas_actualite_mini" do
    assert_difference("DramasActualiteMini.count") do
      post _dramas_actualite_minis_url, params: { _dramas_actualite_mini: { name: @_dramas_actualite_mini.name } }
    end

    assert_redirected_to _dramas_actualite_mini_url(DramasActualiteMini.last)
  end

  test "should show _dramas_actualite_mini" do
    get _dramas_actualite_mini_url(@_dramas_actualite_mini)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_actualite_mini_url(@_dramas_actualite_mini)
    assert_response :success
  end

  test "should update _dramas_actualite_mini" do
    patch _dramas_actualite_mini_url(@_dramas_actualite_mini), params: { _dramas_actualite_mini: { name: @_dramas_actualite_mini.name } }
    assert_redirected_to _dramas_actualite_mini_url(@_dramas_actualite_mini)
  end

  test "should destroy _dramas_actualite_mini" do
    assert_difference("DramasActualiteMini.count", -1) do
      delete _dramas_actualite_mini_url(@_dramas_actualite_mini)
    end

    assert_redirected_to _dramas_actualite_minis_url
  end
end
