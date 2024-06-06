class PetitesAnnoncesLieusController < ApplicationController
  before_action :set__petites_annonces_lieu, only: %i[ show edit update destroy ]

  # GET /_petites_annonces_lieus or /_petites_annonces_lieus.json
  def index
    @_petites_annonces_lieus = PetitesAnnoncesLieu.all
  end

  # GET /_petites_annonces_lieus/1 or /_petites_annonces_lieus/1.json
  def show
  end

  # GET /_petites_annonces_lieus/new
  def new
    @_petites_annonces_lieu = PetitesAnnoncesLieu.new
  end

  # GET /_petites_annonces_lieus/1/edit
  def edit
  end

  # POST /_petites_annonces_lieus or /_petites_annonces_lieus.json
  def create
    @_petites_annonces_lieu = PetitesAnnoncesLieu.new(_petites_annonces_lieu_params)

    respond_to do |format|
      if @_petites_annonces_lieu.save
        format.html { redirect_to petites_annonces_lieu_url(@_petites_annonces_lieu), notice: "Petites annonces lieu was successfully created." }
        format.json { render :show, status: :created, location: @_petites_annonces_lieu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_petites_annonces_lieu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_petites_annonces_lieus/1 or /_petites_annonces_lieus/1.json
  def update
    respond_to do |format|
      if @_petites_annonces_lieu.update(_petites_annonces_lieu_params)
        format.html { redirect_to petites_annonces_lieu_url(@_petites_annonces_lieu), notice: "Petites annonces lieu was successfully updated." }
        format.json { render :show, status: :ok, location: @_petites_annonces_lieu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_petites_annonces_lieu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_petites_annonces_lieus/1 or /_petites_annonces_lieus/1.json
  def destroy
    @_petites_annonces_lieu.destroy!

    respond_to do |format|
      format.html { redirect_to petites_annonces_lieus_url, notice: "Petites annonces lieu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__petites_annonces_lieu
      @_petites_annonces_lieu = PetitesAnnoncesLieu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _petites_annonces_lieu_params
      params.require(:petites_annonces_lieu).permit(:name)
    end
end
