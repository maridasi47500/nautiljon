class Dvd::BluRaysGroupesController < ApplicationController
  before_action :set__dvd_blu_rays_groupe, only: %i[ show edit update destroy ]

  # GET /_dvd_blu_rays_groupes or /_dvd_blu_rays_groupes.json
  def index
    @_dvd_blu_rays_groupes = Dvd::BluRaysGroupe.all
  end

  # GET /_dvd_blu_rays_groupes/1 or /_dvd_blu_rays_groupes/1.json
  def show
  end

  # GET /_dvd_blu_rays_groupes/new
  def new
    @_dvd_blu_rays_groupe = Dvd::BluRaysGroupe.new
  end

  # GET /_dvd_blu_rays_groupes/1/edit
  def edit
  end

  # POST /_dvd_blu_rays_groupes or /_dvd_blu_rays_groupes.json
  def create
    @_dvd_blu_rays_groupe = Dvd::BluRaysGroupe.new(_dvd_blu_rays_groupe_params)

    respond_to do |format|
      if @_dvd_blu_rays_groupe.save
        format.html { redirect_to dvd_blu_rays_groupe_url(@_dvd_blu_rays_groupe), notice: "Blu rays groupe was successfully created." }
        format.json { render :show, status: :created, location: @_dvd_blu_rays_groupe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dvd_blu_rays_groupes/1 or /_dvd_blu_rays_groupes/1.json
  def update
    respond_to do |format|
      if @_dvd_blu_rays_groupe.update(_dvd_blu_rays_groupe_params)
        format.html { redirect_to dvd_blu_rays_groupe_url(@_dvd_blu_rays_groupe), notice: "Blu rays groupe was successfully updated." }
        format.json { render :show, status: :ok, location: @_dvd_blu_rays_groupe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dvd_blu_rays_groupes/1 or /_dvd_blu_rays_groupes/1.json
  def destroy
    @_dvd_blu_rays_groupe.destroy!

    respond_to do |format|
      format.html { redirect_to dvd_blu_rays_groupes_url, notice: "Blu rays groupe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dvd_blu_rays_groupe
      @_dvd_blu_rays_groupe = Dvd::BluRaysGroupe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dvd_blu_rays_groupe_params
      params.require(:dvd_blu_rays_groupe).permit(:name)
    end
end
