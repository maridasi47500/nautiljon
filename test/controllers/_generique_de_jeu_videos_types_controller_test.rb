require "test_helper"

class GeneriqueDeJeuVideosTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_generique_de_jeu_videos_type = _generique_de_jeu_videos_types(:one)
  end

  test "should get index" do
    get _generique_de_jeu_videos_types_url
    assert_response :success
  end

  test "should get new" do
    get new__generique_de_jeu_videos_type_url
    assert_response :success
  end

  test "should create _generique_de_jeu_videos_type" do
    assert_difference("GeneriqueDeJeuVideosType.count") do
      post _generique_de_jeu_videos_types_url, params: { _generique_de_jeu_videos_type: { name: @_generique_de_jeu_videos_type.name } }
    end

    assert_redirected_to _generique_de_jeu_videos_type_url(GeneriqueDeJeuVideosType.last)
  end

  test "should show _generique_de_jeu_videos_type" do
    get _generique_de_jeu_videos_type_url(@_generique_de_jeu_videos_type)
    assert_response :success
  end

  test "should get edit" do
    get edit__generique_de_jeu_videos_type_url(@_generique_de_jeu_videos_type)
    assert_response :success
  end

  test "should update _generique_de_jeu_videos_type" do
    patch _generique_de_jeu_videos_type_url(@_generique_de_jeu_videos_type), params: { _generique_de_jeu_videos_type: { name: @_generique_de_jeu_videos_type.name } }
    assert_redirected_to _generique_de_jeu_videos_type_url(@_generique_de_jeu_videos_type)
  end

  test "should destroy _generique_de_jeu_videos_type" do
    assert_difference("GeneriqueDeJeuVideosType.count", -1) do
      delete _generique_de_jeu_videos_type_url(@_generique_de_jeu_videos_type)
    end

    assert_redirected_to _generique_de_jeu_videos_types_url
  end
end
