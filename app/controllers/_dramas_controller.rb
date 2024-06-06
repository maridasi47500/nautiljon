class DramasController < ApplicationController
  before_action :set__drama, only: %i[ show edit update destroy ]

  # GET /_dramas or /_dramas.json
  def index
    @_dramas = Drama.all
  end

  # GET /_dramas/1 or /_dramas/1.json
  def show
  end

  # GET /_dramas/new
  def new
    @_drama = Drama.new
  end

  # GET /_dramas/1/edit
  def edit
  end

  # POST /_dramas or /_dramas.json
  def create
    @_drama = Drama.new(_drama_params)

    respond_to do |format|
      if @_drama.save
        format.html { redirect_to _drama_url(@_drama), notice: "Drama was successfully created." }
        format.json { render :show, status: :created, location: @_drama }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas/1 or /_dramas/1.json
  def update
    respond_to do |format|
      if @_drama.update(_drama_params)
        format.html { redirect_to _drama_url(@_drama), notice: "Drama was successfully updated." }
        format.json { render :show, status: :ok, location: @_drama }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas/1 or /_dramas/1.json
  def destroy
    @_drama.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_url, notice: "Drama was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__drama
      @_drama = Drama.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _drama_params
      params.require(:_drama).permit(:titre, :titre_alternatif, :titre_alternatif_suite, :titre_original_latin, :titre_original, :image, :_dramas_origine_id, :_dramas_encours_id, :date_debut_jj, :date_debut_mm, :date_debut_aaaa, :date_fin_jj, :date_fin_mm, :date_fin_aaaa, :nb_ep, :total_ep_inconnu, :_dramas_pays_id, :_dramas_pays_id, :duree, :age, :_dramas_genres_id, :_dramas_genres_id, :_dramas_themes_id, :_dramas_themes_id, :_dramas_staff_role_id, :_dramas_staff_people_id, :_dramas_staff_role_id, :_dramas_staff_people_id, :_dramas_staff_role_id, :_dramas_staff_people_id, :_dramas_societe_role_id, :_dramas_societe_people_id, :_dramas_type_id, :_dramas_acteurs_id, :_dramas_type_id, :_dramas_acteurs_id, :_dramas_type_id, :_dramas_acteurs_id, :_dramas_type_id, :_dramas_acteurs_id, :synopsis, :youtube, :webdrama, :webdrama, :_dramas_editeurs_vf_role_id, :_dramas_editeurs_vf_id, :_dramas_editeurs_vf_role_id, :_dramas_editeurs_vf_id, :date_debut_simulcast_jj, :date_debut_simulcast_mm, :date_debut_simulcast_aaaa, :licencie, :licencie, :date_vf_jj, :date_vf_mm, :date_vf_aaaa, :site, :site2, :_dramas_programme_id, :episodes, :_dramas_generiques_type_id, :_dramas_generiques_people_id, :_dramas_generiques_people2_id, :_dramas_generiques_clip_id, :_dramas_generiques_parole_id, :_dramas_generiques_type_id, :_dramas_generiques_people_id, :_dramas_generiques_people2_id, :_dramas_generiques_clip_id, :_dramas_generiques_parole_id, :infos, :_dramas_groupes_id, :_dramas_anime_id, :_dramas_anime_plus_id, :_dramas_ln_id, :_dramas_ln_plus_id, :_dramas_manga_id, :_dramas_manga_plus_id, :_dramas_drama_id, :_dramas_drama_plus_id, :_dramas_jv_id, :_dramas_jv_plus_id, :_dramas_am_id, :_dramas_am_plus_id, :_dramas_univers_id, :_dramas_litterature_asiatique_id, :_dramas_litterature_asiatique_plus_id, :_dramas_actualite_id, :_dramas_culture_id, :_dramas_actualite_mini_id, :_dramas_ost_id, :_dramas_doujin_id, :_dramas_cd_id, :_dramas_dvd_id, :_dramas_artbook_id, :_dramas_emission_tv_id, :_dramas_emission_tv_plus_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
