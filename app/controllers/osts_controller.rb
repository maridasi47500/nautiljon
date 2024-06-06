class OstsController < ApplicationController
  before_action :set_ost, only: %i[ show edit update destroy ]

  # GET /osts or /osts.json
  def index
    @osts = Ost.all
  end

  # GET /osts/1 or /osts/1.json
  def show
  end

  # GET /osts/new
  def new
    @ost = Ost.new
  end

  # GET /osts/1/edit
  def edit
  end

  # POST /osts or /osts.json
  def create
    @ost = Ost.new(ost_params)

    respond_to do |format|
      if @ost.save
        format.html { redirect_to ost_url(@ost), notice: "Ost was successfully created." }
        format.json { render :show, status: :created, location: @ost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /osts/1 or /osts/1.json
  def update
    respond_to do |format|
      if @ost.update(ost_params)
        format.html { redirect_to ost_url(@ost), notice: "Ost was successfully updated." }
        format.json { render :show, status: :ok, location: @ost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /osts/1 or /osts/1.json
  def destroy
    @ost.destroy!

    respond_to do |format|
      format.html { redirect_to osts_url, notice: "Ost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ost
      @ost = Ost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ost_params
      params.require(:ost).permit(:titre, :titre_original_latin, :titre_original, :titre_us, :titre_alternatif, :osts_type_id, :osts_plateforme_id, :osts_plateforme_id, :ref, :date_jj, :date_mm, :date_aaaa, :prix, :osts_monnaie_id, :bonus_cd, :osts_role_id, :osts_people_id, :osts_role_id, :osts_people_id, :image, :sametracklist, :osts_labels_id, :osts_labels_id, :osts_distributeurs_id, :osts_distributeurs_id, :infos, :osts_groupes_id, :osts_anime_id, :osts_ln_id, :osts_drama_id, :osts_am_id, :osts_jv_id, :osts_ost_id, :osts_emission_tv_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
