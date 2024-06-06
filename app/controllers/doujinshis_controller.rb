class DoujinshisController < ApplicationController
  before_action :set__doujinshi, only: %i[ show edit update destroy ]

  # GET /_doujinshis or /_doujinshis.json
  def index
    @_doujinshis = Doujinshi.all
  end

  # GET /_doujinshis/1 or /_doujinshis/1.json
  def show
  end

  # GET /_doujinshis/new
  def new
    @_doujinshi = Doujinshi.new
  end

  # GET /_doujinshis/1/edit
  def edit
  end

  # POST /_doujinshis or /_doujinshis.json
  def create
    @_doujinshi = Doujinshi.new(_doujinshi_params)

    respond_to do |format|
      if @_doujinshi.save
        format.html { redirect_to doujinshi_url(@_doujinshi), notice: "Doujinshi was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis/1 or /_doujinshis/1.json
  def update
    respond_to do |format|
      if @_doujinshi.update(_doujinshi_params)
        format.html { redirect_to doujinshi_url(@_doujinshi), notice: "Doujinshi was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis/1 or /_doujinshis/1.json
  def destroy
    @_doujinshi.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_url, notice: "Doujinshi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshi
      @_doujinshi = Doujinshi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshi_params
      params.require(:doujinshi).permit(:_doujinshis_france_id, :titre, :titre_alternatif, :titre_alternatif_suite, :titre_original_latin, :titre_original, :image, :image_vo, :_doujinshis_origine_id, :_doujinshis_pays_id, :_doujinshis_pays_id, :_doujinshis_type_id, :numerique, :_doujinshis_genres_id, :_doujinshis_genres_id, :_doujinshis_themes_id, :_doujinshis_themes_id, :_doujinshis_genres_averti_id, :_doujinshis_genres_averti_id, :date_parution_vo_jj, :date_parution_vo_mm, :date_parution_vo_aaaa, :date_parution_vf_jj, :date_parution_vf_mm, :date_parution_vf_aaaa, :nb_page, :_doujinshis_conventions_id, :_doujinshis_conventions_id, :_doujinshis_role_id, :_doujinshis_staff_people_id, :_doujinshis_role_id, :_doujinshis_staff_people_id, :staff_txt, :_doujinshis_public_averti_id, :_doujinshis_censure_id, :tags, :prix, :_doujinshis_gratuit_id, :lien_achat, :infos, :resume, :_doujinshis_groupes_id, :_doujinshis_anime_id, :_doujinshis_anime_plus_id, :_doujinshis_manga_id, :_doujinshis_manga_plus_id, :_doujinshis_ln_id, :_doujinshis_ln_plus_id, :_doujinshis_doujinshi_id, :_doujinshis_doujinshi_plus_id, :_doujinshis_drama_id, :_doujinshis_drama_plus_id, :_doujinshis_jv_id, :_doujinshis_jv_plus_id, :_doujinshis_am_id, :_doujinshis_am_plus_id, :_doujinshis_litterature_asiatique_id, :_doujinshis_litterature_asiatique_plus_id, :_doujinshis_artbook_id, :_doujinshis_actualite_id, :_doujinshis_culture_id, :_doujinshis_actualite_mini_id, :_doujinshis_perso_id, :_doujinshis_perso_plus_id, :_doujinshis_perso_manga_id, :_doujinshis_jv_perso_id, :_doujinshis_quizz_id, :_doujinshis_people_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
