class MangasController < ApplicationController
  before_action :set__manga, only: %i[ show edit update destroy ]

  # GET /_mangas or /_mangas.json
  def index
    @_mangas = Manga.all
  end

  # GET /_mangas/1 or /_mangas/1.json
  def show
  end

  # GET /_mangas/new
  def new
    @_manga = Manga.new
  end

  # GET /_mangas/1/edit
  def edit
  end

  # POST /_mangas or /_mangas.json
  def create
    @_manga = Manga.new(_manga_params)

    respond_to do |format|
      if @_manga.save
        format.html { redirect_to manga_url(@_manga), notice: "Manga was successfully created." }
        format.json { render :show, status: :created, location: @_manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas/1 or /_mangas/1.json
  def update
    respond_to do |format|
      if @_manga.update(_manga_params)
        format.html { redirect_to manga_url(@_manga), notice: "Manga was successfully updated." }
        format.json { render :show, status: :ok, location: @_manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas/1 or /_mangas/1.json
  def destroy
    @_manga.destroy!

    respond_to do |format|
      format.html { redirect_to mangas_url, notice: "Manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__manga
      @_manga = Manga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _manga_params
      params.require(:manga).permit(:titre, :titre_alternatif, :titre_alternatif_suite, :titre_original_latin, :titre_original, :image, :image_vo, :_mangas_pays_id, :_mangas_pays_id, :_mangas_type_id, :webcomic, :_mangas_genres_id, :_mangas_genres_id, :_mangas_themes_id, :_mangas_themes_id, :annee_vo, :annee_vf, :annee_defaut, :nb_volumes_vo, :nb_chapitres_vo, :nb_volumes_vf, :nb_chapitres_vf, :_mangas_encours_vo_id, :_mangas_encours_vf_id, :_mangas_editeurs_vo_id, :_mangas_editeurs_vo_id, :_mangas_editeurs_vf_id, :_mangas_editeurs_vf_collection_id, :_mangas_editeurs_vf_id, :_mangas_editeurs_vf_collection_id, :_mangas_prepublie_id, :_mangas_prepublie_id, :_mangas_staff_role_id, :_mangas_staff_people_id, :_mangas_staff_role_id, :_mangas_staff_people_id, :_mangas_societe_role_id, :_mangas_societe_people_id, :_mangas_societe_role_id, :_mangas_societe_people_id, :age, :_mangas_public_averti_id, :_mangas_commerce_id, :adapte_anime, :adapte_anime, :adapte_anime, :prix, :resume, :infos, :youtube, :_mangas_groupes_id, :_mangas_anime_id, :_mangas_anime_plus_id, :_mangas_ln_id, :_mangas_ln_plus_id, :_mangas_manga_id, :_mangas_manga_plus_id, :_mangas_drama_id, :_mangas_drama_plus_id, :_mangas_jv_id, :_mangas_jv_plus_id, :_mangas_am_id, :_mangas_am_plus_id, :_mangas_litterature_asiatique_id, :_mangas_litterature_asiatique_plus_id, :_mangas_artbook_id, :_mangas_actualite_id, :_mangas_culture_id, :_mangas_actualite_mini_id, :_mangas_sondage_id, :_mangas_quizz_id, :_mangas_concours_id, :_mangas_people_id, :_mangas_clip_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
