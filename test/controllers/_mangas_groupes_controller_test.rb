require "test_helper"

class MangasGroupesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_groupe = _mangas_groupes(:one)
  end

  test "should get index" do
    get _mangas_groupes_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_groupe_url
    assert_response :success
  end

  test "should create _mangas_groupe" do
    assert_difference("MangasGroupe.count") do
      post _mangas_groupes_url, params: { _mangas_groupe: { name: @_mangas_groupe.name } }
    end

    assert_redirected_to _mangas_groupe_url(MangasGroupe.last)
  end

  test "should show _mangas_groupe" do
    get _mangas_groupe_url(@_mangas_groupe)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_groupe_url(@_mangas_groupe)
    assert_response :success
  end

  test "should update _mangas_groupe" do
    patch _mangas_groupe_url(@_mangas_groupe), params: { _mangas_groupe: { name: @_mangas_groupe.name } }
    assert_redirected_to _mangas_groupe_url(@_mangas_groupe)
  end

  test "should destroy _mangas_groupe" do
    assert_difference("MangasGroupe.count", -1) do
      delete _mangas_groupe_url(@_mangas_groupe)
    end

    assert_redirected_to _mangas_groupes_url
  end
end
