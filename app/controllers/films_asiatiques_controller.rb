class FilmsAsiatiquesController < ApplicationController
  before_action :set__films_asiatique, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques or /_films_asiatiques.json
  def index
    @_films_asiatiques = FilmsAsiatique.all
  end

  # GET /_films_asiatiques/1 or /_films_asiatiques/1.json
  def show
  end

  # GET /_films_asiatiques/new
  def new
    @_films_asiatique = FilmsAsiatique.new
  end

  # GET /_films_asiatiques/1/edit
  def edit
  end

  # POST /_films_asiatiques or /_films_asiatiques.json
  def create
    @_films_asiatique = FilmsAsiatique.new(_films_asiatique_params)

    respond_to do |format|
      if @_films_asiatique.save
        format.html { redirect_to films_asiatique_url(@_films_asiatique), notice: "Films asiatique was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques/1 or /_films_asiatiques/1.json
  def update
    respond_to do |format|
      if @_films_asiatique.update(_films_asiatique_params)
        format.html { redirect_to films_asiatique_url(@_films_asiatique), notice: "Films asiatique was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatique }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques/1 or /_films_asiatiques/1.json
  def destroy
    @_films_asiatique.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_url, notice: "Films asiatique was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatique
      @_films_asiatique = FilmsAsiatique.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatique_params
      params.require(:films_asiatique).permit(:titre, :titre_alternatif, :titre_alternatif_suite, :titre_original_latin, :titre_original, :image, :image_internationale, :image_francaise, :_films_asiatiques_origine_id, :date_debut_jj, :date_debut_mm, :date_debut_aaaa, :_films_asiatiques_pays_id, :_films_asiatiques_pays_id, :duree, :age, :_films_asiatiques_genres_id, :_films_asiatiques_genres_id, :_films_asiatiques_themes_id, :_films_asiatiques_themes_id, :_films_asiatiques_staff_role_id, :_films_asiatiques_staff_people_id, :_films_asiatiques_staff_role_id, :_films_asiatiques_staff_people_id, :_films_asiatiques_staff_role_id, :_films_asiatiques_staff_people_id, :_films_asiatiques_societe_role_id, :_films_asiatiques_societe_people_id, :_films_asiatiques_type_id, :_films_asiatiques_acteurs_id, :_films_asiatiques_type_id, :_films_asiatiques_acteurs_id, :_films_asiatiques_type_id, :_films_asiatiques_acteurs_id, :_films_asiatiques_type_id, :_films_asiatiques_acteurs_id, :synopsis, :youtube, :licencie, :licencie, :date_vf_jj, :date_vf_mm, :date_vf_aaaa, :_films_asiatiques_editeurs_vf_role_id, :_films_asiatiques_editeurs_vf_id, :_films_asiatiques_editeurs_vf_role_id, :_films_asiatiques_editeurs_vf_id, :date_debut_simulcast_jj, :date_debut_simulcast_mm, :date_debut_simulcast_aaaa, :site, :_films_asiatiques_generiques_type_id, :_films_asiatiques_generiques_people_id, :_films_asiatiques_generiques_people2_id, :_films_asiatiques_generiques_clip_id, :_films_asiatiques_generiques_parole_id, :_films_asiatiques_generiques_type_id, :_films_asiatiques_generiques_people_id, :_films_asiatiques_generiques_people2_id, :_films_asiatiques_generiques_clip_id, :_films_asiatiques_generiques_parole_id, :infos, :_films_asiatiques_groupes_id, :_films_asiatiques_anime_id, :_films_asiatiques_anime_plus_id, :_films_asiatiques_ln_id, :_films_asiatiques_ln_plus_id, :_films_asiatiques_manga_id, :_films_asiatiques_manga_plus_id, :_films_asiatiques_drama_id, :_films_asiatiques_drama_plus_id, :_films_asiatiques_jv_id, :_films_asiatiques_jv_plus_id, :_films_asiatiques_am_id, :_films_asiatiques_am_plus_id, :_films_asiatiques_cinema_id, :_films_asiatiques_univers_id, :_films_asiatiques_people_id, :_films_asiatiques_litterature_asiatique_id, :_films_asiatiques_litterature_asiatique_plus_id, :_films_asiatiques_actualite_id, :_films_asiatiques_culture_id, :_films_asiatiques_emission_tv_id, :_films_asiatiques_emission_tv_plus_id, :_films_asiatiques_actualite_mini_id, :_films_asiatiques_ost_id, :_films_asiatiques_doujin_id, :_films_asiatiques_cd_id, :_films_asiatiques_sondage_id, :_films_asiatiques_quizz_id, :_films_asiatiques_concours_id, :_films_asiatiques_dvd_id, :_films_asiatiques_artbook_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
