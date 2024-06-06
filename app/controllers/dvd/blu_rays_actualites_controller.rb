class Dvd::BluRaysActualitesController < ApplicationController
  before_action :set__dvd_blu_rays_actualite, only: %i[ show edit update destroy ]

  # GET /_dvd_blu_rays_actualites or /_dvd_blu_rays_actualites.json
  def index
    @_dvd_blu_rays_actualites = Dvd::BluRaysActualite.all
  end

  # GET /_dvd_blu_rays_actualites/1 or /_dvd_blu_rays_actualites/1.json
  def show
  end

  # GET /_dvd_blu_rays_actualites/new
  def new
    @_dvd_blu_rays_actualite = Dvd::BluRaysActualite.new
  end

  # GET /_dvd_blu_rays_actualites/1/edit
  def edit
  end

  # POST /_dvd_blu_rays_actualites or /_dvd_blu_rays_actualites.json
  def create
    @_dvd_blu_rays_actualite = Dvd::BluRaysActualite.new(_dvd_blu_rays_actualite_params)

    respond_to do |format|
      if @_dvd_blu_rays_actualite.save
        format.html { redirect_to dvd_blu_rays_actualite_url(@_dvd_blu_rays_actualite), notice: "Blu rays actualite was successfully created." }
        format.json { render :show, status: :created, location: @_dvd_blu_rays_actualite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dvd_blu_rays_actualites/1 or /_dvd_blu_rays_actualites/1.json
  def update
    respond_to do |format|
      if @_dvd_blu_rays_actualite.update(_dvd_blu_rays_actualite_params)
        format.html { redirect_to dvd_blu_rays_actualite_url(@_dvd_blu_rays_actualite), notice: "Blu rays actualite was successfully updated." }
        format.json { render :show, status: :ok, location: @_dvd_blu_rays_actualite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dvd_blu_rays_actualites/1 or /_dvd_blu_rays_actualites/1.json
  def destroy
    @_dvd_blu_rays_actualite.destroy!

    respond_to do |format|
      format.html { redirect_to dvd_blu_rays_actualites_url, notice: "Blu rays actualite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dvd_blu_rays_actualite
      @_dvd_blu_rays_actualite = Dvd::BluRaysActualite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dvd_blu_rays_actualite_params
      params.require(:dvd_blu_rays_actualite).permit(:name)
    end
end
