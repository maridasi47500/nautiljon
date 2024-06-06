class GoodiesController < ApplicationController
  before_action :set__goody, only: %i[ show edit update destroy ]

  # GET /_goodies or /_goodies.json
  def index
    @_goodies = Goody.all
  end

  # GET /_goodies/1 or /_goodies/1.json
  def show
  end

  # GET /_goodies/new
  def new
    @_goody = Goody.new
  end

  # GET /_goodies/1/edit
  def edit
  end

  # POST /_goodies or /_goodies.json
  def create
    @_goody = Goody.new(_goody_params)

    respond_to do |format|
      if @_goody.save
        format.html { redirect_to goody_url(@_goody), notice: "Goody was successfully created." }
        format.json { render :show, status: :created, location: @_goody }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goody.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies/1 or /_goodies/1.json
  def update
    respond_to do |format|
      if @_goody.update(_goody_params)
        format.html { redirect_to goody_url(@_goody), notice: "Goody was successfully updated." }
        format.json { render :show, status: :ok, location: @_goody }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goody.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies/1 or /_goodies/1.json
  def destroy
    @_goody.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_url, notice: "Goody was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goody
      @_goody = Goody.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goody_params
      params.require(:goody).permit(:_goodies_type_id, :_goodies_pays_id, :titre, :titre_alternatif, :titre_original_latin, :titre_original, :image, :image_vo, :date_parution_vo_jj, :date_parution_vo_mm, :date_parution_vo_aaaa, :date_parution_vf_jj, :date_parution_vf_mm, :date_parution_vf_aaaa, :date_reedition_jj, :date_reedition_mm, :date_reedition_aaaa, :prix, :commerce, :ean, :ref, :_goodies_matiere_id, :_goodies_matiere_id, :dimensions_h, :dimensions_w, :dimensions_z, :poids, :echelle, :articule, :articule, :site, :_goodies_editeurs_vo_id, :_goodies_editeurs_vo_id, :_goodies_editeurs_vf_id, :_goodies_editeurs_vf_id, :_goodies_staff_role_id, :_goodies_staff_people_id, :_goodies_staff_role_id, :_goodies_staff_people_id, :sculpteur, :_goodies_societe_role_id, :_goodies_societe_people_id, :_goodies_societe_role_id, :_goodies_societe_people_id, :resume, :infos, :youtube, :_goodies_public_averti_id, :_goodies_groupes_id, :_goodies_anime_id, :_goodies_perso_id, :_goodies_manga_id, :_goodies_perso_manga_id, :_goodies_jv_id, :_goodies_jv_perso_id, :_goodies_ln_id, :_goodies_drama_id, :_goodies_am_id, :_goodies_artbook_id, :_goodies_photobook_id, :_goodies_doujinshi_id, :_goodies_dvd_id, :_goodies_cd_id, :_goodies_ost_id, :_goodies_people_id, :_goodies_goodies_id, :_goodies_clip_id, :_goodies_bonus_id, :_goodies_litterature_asiatique_id, :_goodies_actualite_id, :_goodies_actualite_mini_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
