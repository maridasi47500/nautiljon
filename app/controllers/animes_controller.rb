class AnimesController < ApplicationController
  before_action :set_anime, only: %i[ show edit update destroy ]

  # GET /animes or /animes.json
  def planning
    @_animes=@animes = Anime.all
    render :index
  end
  def index
    @_animes=@animes = Anime.all
  end

  # GET /animes/1 or /animes/1.json
  def show
  end

  # GET /animes/new
  def new
    @anime = Anime.new
  end

  # GET /animes/1/edit
  def edit
  end

  # POST /animes or /animes.json
  def create
    @anime = Anime.new(anime_params)

    respond_to do |format|
      if @anime.save
        format.html { redirect_to anime_url(@anime), notice: "Anime was successfully created." }
        format.json { render :show, status: :created, location: @anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes/1 or /animes/1.json
  def update
    respond_to do |format|
      if @anime.update(anime_params)
        format.html { redirect_to anime_url(@anime), notice: "Anime was successfully updated." }
        format.json { render :show, status: :ok, location: @anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes/1 or /animes/1.json
  def destroy
    @anime.destroy!

    respond_to do |format|
      format.html { redirect_to animes_url, notice: "Anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anime
      @anime = Anime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def anime_params
      params.require(:anime).permit(:titre, :titre_alternatif, :titre_alternatif_suite, :titre_original_latin, :titre_original, :image, :animes_format_id, :animes_origine_id, :webanime, :animes_encours_id, :date_debut_jj, :date_debut_mm, :date_debut_aaaa, :date_fin_jj, :date_fin_mm, :date_fin_aaaa, :animes_pays_id, :animes_pays_id, :animes_genres_id, :animes_genres_id, :animes_themes_id, :animes_themes_id, :animes_staff_role_id, :animes_staff_people_id, :animes_staff_role_id, :animes_staff_people_id, :animes_societe_role_id, :animes_societe_people_id, :animes_societe_role_id, :animes_societe_people_id, :animes_public_averti_id, :age, :nb_ep, :total_ep_inconnu, :duree, :licencie, :licencie, :animes_editeurs_vf_role_id, :animes_editeurs_vf_id, :animes_editeurs_vf_role_id, :animes_editeurs_vf_id, :date_debut_simulcast_jj, :date_debut_simulcast_mm, :date_debut_simulcast_aaaa, :date_vf_jj, :date_vf_mm, :date_vf_aaaa, :image_francaise, :description, :site, :site2, :youtube, :animes_groupes_id, :animes_actualite_id, :animes_actualite_mini_id, :animes_anime_id, :animes_anime_plus_id, :animes_ln_id, :animes_ln_plus_id, :animes_manga_id, :animes_manga_plus_id, :animes_jv_id, :animes_jv_plus_id, :animes_am_id, :animes_am_plus_id, :animes_drama_id, :animes_drama_plus_id, :animes_people_id, :animes_dvd_id, :animes_artbook_id, :animes_photobook_id, :animes_litterature_asiatique_id, :animes_litterature_asiatique_plus_id, :animes_culture_id, :animes_ost_id, :animes_cd_id, :animes_doujin_id, :animes_amv_id, :animes_cinema_id, :animes_quizz_id, :animes_topic_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
