class AmvsController < ApplicationController
  before_action :set_amv, only: %i[ show edit update destroy ]

  # GET /amvs or /amvs.json
  def index
    @amvs = Amv.all
  end

  # GET /amvs/1 or /amvs/1.json
  def show
  end

  # GET /amvs/new
  def new
    @amv = Amv.new
  end

  # GET /amvs/1/edit
  def edit
  end

  # POST /amvs or /amvs.json
  def create
    @amv = Amv.new(amv_params)

    respond_to do |format|
      if @amv.save
        format.html { redirect_to amv_url(@amv), notice: "Amv was successfully created." }
        format.json { render :show, status: :created, location: @amv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @amv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amvs/1 or /amvs/1.json
  def update
    respond_to do |format|
      if @amv.update(amv_params)
        format.html { redirect_to amv_url(@amv), notice: "Amv was successfully updated." }
        format.json { render :show, status: :ok, location: @amv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @amv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amvs/1 or /amvs/1.json
  def destroy
    @amv.destroy!

    respond_to do |format|
      format.html { redirect_to amvs_url, notice: "Amv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amv
      @amv = Amv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def amv_params
      params.require(:amv).permit(:titre, :image, :amvs_makers_id, :amvs_makers_id, :youtube, :lien, :song, :date_jj, :date_mm, :date_aaaa, :duree, :amvs_type_id, :amvs_type_id, :description, :amvs_conventions_id, :amvs_conventions_id, :amvs_groupes_id, :amvs_anime_id, :amvs_jv_id, :amvs_amv_id, :autre, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
