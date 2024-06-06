class Dvd::BluRaysEditeursController < ApplicationController
  before_action :set__dvd_blu_rays_editeur, only: %i[ show edit update destroy ]

  # GET /_dvd_blu_rays_editeurs or /_dvd_blu_rays_editeurs.json
  def index
    @_dvd_blu_rays_editeurs = Dvd::BluRaysEditeur.all
  end

  # GET /_dvd_blu_rays_editeurs/1 or /_dvd_blu_rays_editeurs/1.json
  def show
  end

  # GET /_dvd_blu_rays_editeurs/new
  def new
    @_dvd_blu_rays_editeur = Dvd::BluRaysEditeur.new
  end

  # GET /_dvd_blu_rays_editeurs/1/edit
  def edit
  end

  # POST /_dvd_blu_rays_editeurs or /_dvd_blu_rays_editeurs.json
  def create
    @_dvd_blu_rays_editeur = Dvd::BluRaysEditeur.new(_dvd_blu_rays_editeur_params)

    respond_to do |format|
      if @_dvd_blu_rays_editeur.save
        format.html { redirect_to dvd_blu_rays_editeur_url(@_dvd_blu_rays_editeur), notice: "Blu rays editeur was successfully created." }
        format.json { render :show, status: :created, location: @_dvd_blu_rays_editeur }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_editeur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dvd_blu_rays_editeurs/1 or /_dvd_blu_rays_editeurs/1.json
  def update
    respond_to do |format|
      if @_dvd_blu_rays_editeur.update(_dvd_blu_rays_editeur_params)
        format.html { redirect_to dvd_blu_rays_editeur_url(@_dvd_blu_rays_editeur), notice: "Blu rays editeur was successfully updated." }
        format.json { render :show, status: :ok, location: @_dvd_blu_rays_editeur }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_editeur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dvd_blu_rays_editeurs/1 or /_dvd_blu_rays_editeurs/1.json
  def destroy
    @_dvd_blu_rays_editeur.destroy!

    respond_to do |format|
      format.html { redirect_to dvd_blu_rays_editeurs_url, notice: "Blu rays editeur was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dvd_blu_rays_editeur
      @_dvd_blu_rays_editeur = Dvd::BluRaysEditeur.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dvd_blu_rays_editeur_params
      params.require(:dvd_blu_rays_editeur).permit(:name)
    end
end
