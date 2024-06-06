class Dvd::BluRaysLitteratureAsiatiquesController < ApplicationController
  before_action :set__dvd_blu_rays_litterature_asiatique, only: %i[ show edit update destroy ]

  # GET /_dvd_blu_rays_litterature_asiatiques or /_dvd_blu_rays_litterature_asiatiques.json
  def index
    @_dvd_blu_rays_litterature_asiatiques = Dvd::BluRaysLitteratureAsiatique.all
  end

  # GET /_dvd_blu_rays_litterature_asiatiques/1 or /_dvd_blu_rays_litterature_asiatiques/1.json
  def show
  end

  # GET /_dvd_blu_rays_litterature_asiatiques/new
  def new
    @_dvd_blu_rays_litterature_asiatique = Dvd::BluRaysLitteratureAsiatique.new
  end

  # GET /_dvd_blu_rays_litterature_asiatiques/1/edit
  def edit
  end

  # POST /_dvd_blu_rays_litterature_asiatiques or /_dvd_blu_rays_litterature_asiatiques.json
  def create
    @_dvd_blu_rays_litterature_asiatique = Dvd::BluRaysLitteratureAsiatique.new(_dvd_blu_rays_litterature_asiatique_params)

    respond_to do |format|
      if @_dvd_blu_rays_litterature_asiatique.save
        format.html { redirect_to dvd_blu_rays_litterature_asiatique_url(@_dvd_blu_rays_litterature_asiatique), notice: "Blu rays litterature asiatique was successfully created." }
        format.json { render :show, status: :created, location: @_dvd_blu_rays_litterature_asiatique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dvd_blu_rays_litterature_asiatiques/1 or /_dvd_blu_rays_litterature_asiatiques/1.json
  def update
    respond_to do |format|
      if @_dvd_blu_rays_litterature_asiatique.update(_dvd_blu_rays_litterature_asiatique_params)
        format.html { redirect_to dvd_blu_rays_litterature_asiatique_url(@_dvd_blu_rays_litterature_asiatique), notice: "Blu rays litterature asiatique was successfully updated." }
        format.json { render :show, status: :ok, location: @_dvd_blu_rays_litterature_asiatique }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dvd_blu_rays_litterature_asiatiques/1 or /_dvd_blu_rays_litterature_asiatiques/1.json
  def destroy
    @_dvd_blu_rays_litterature_asiatique.destroy!

    respond_to do |format|
      format.html { redirect_to dvd_blu_rays_litterature_asiatiques_url, notice: "Blu rays litterature asiatique was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dvd_blu_rays_litterature_asiatique
      @_dvd_blu_rays_litterature_asiatique = Dvd::BluRaysLitteratureAsiatique.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dvd_blu_rays_litterature_asiatique_params
      params.require(:dvd_blu_rays_litterature_asiatique).permit(:name)
    end
end
