class VolumesController < ApplicationController
  before_action :set__volume, only: %i[ show edit update destroy ]

  # GET /_volumes or /_volumes.json
  def index
    @_volumes = Volume.all
  end

  # GET /_volumes/1 or /_volumes/1.json
  def show
  end

  # GET /_volumes/new
  def new
    @_volume = Volume.new
  end

  # GET /_volumes/1/edit
  def edit
  end

  # POST /_volumes or /_volumes.json
  def create
    @_volume = Volume.new(_volume_params)

    respond_to do |format|
      if @_volume.save
        format.html { redirect_to volume_url(@_volume), notice: "Volume was successfully created." }
        format.json { render :show, status: :created, location: @_volume }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_volume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_volumes/1 or /_volumes/1.json
  def update
    respond_to do |format|
      if @_volume.update(_volume_params)
        format.html { redirect_to volume_url(@_volume), notice: "Volume was successfully updated." }
        format.json { render :show, status: :ok, location: @_volume }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_volume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_volumes/1 or /_volumes/1.json
  def destroy
    @_volume.destroy!

    respond_to do |format|
      format.html { redirect_to volumes_url, notice: "Volume was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__volume
      @_volume = Volume.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _volume_params
      params.require(:volume).permit(:_volumes_ln_id, :numero, :_volumes_type_id, :numerique, :image, :image_nc, :image_vo, :image_vo2, :date_parution_vo_jj, :date_parution_vo_mm, :date_parution_vo_aaaa, :date_parution_vf_jj, :date_parution_vf_mm, :date_parution_vf_aaaa, :prix, :prix_vo, :pages, :_volumes_illustrations_id, :ean, :relie, :sous_jaquette, :resume, :chapitres, :infos, :preview, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
