class CdsController < ApplicationController
  before_action :set__cd, only: %i[ show edit update destroy ]

  # GET /_cds or /_cds.json
  def index
    @_cds = Cd.all
  end

  # GET /_cds/1 or /_cds/1.json
  def show
  end

  # GET /_cds/new
  def new
    @_cd = Cd.new
  end

  # GET /_cds/1/edit
  def edit
  end

  # POST /_cds or /_cds.json
  def create
    @_cd = Cd.new(_cd_params)

    respond_to do |format|
      if @_cd.save
        format.html { redirect_to cd_url(@_cd), notice: "Cd was successfully created." }
        format.json { render :show, status: :created, location: @_cd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_cds/1 or /_cds/1.json
  def update
    respond_to do |format|
      if @_cd.update(_cd_params)
        format.html { redirect_to cd_url(@_cd), notice: "Cd was successfully updated." }
        format.json { render :show, status: :ok, location: @_cd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_cds/1 or /_cds/1.json
  def destroy
    @_cd.destroy!

    respond_to do |format|
      format.html { redirect_to cds_url, notice: "Cd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__cd
      @_cd = Cd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _cd_params
      params.require(:cd).permit(:titre, :titre_original, :titre_original_latin, :_cds_type_id, :ref, :date_jj, :date_mm, :date_aaaa, :prix, :_cds_monnaie_id, :_cds_role_id, :_cds_people_id, :_cds_role_id, :_cds_people_id, :image, :sametracklist, :_cds_labels_id, :_cds_labels_id, :_cds_distributeurs_id, :_cds_distributeurs_id, :infos, :_cds_groupes_id, :_cds_cd_id, :_cds_anime_id, :_cds_ln_id, :_cds_drama_id, :_cds_am_id, :_cds_jv_id, :_cds_emission_tv_id, :_cds_bonus_id, :_cds_manga_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
