class PetitesAnnoncesController < ApplicationController
  before_action :set__petites_annonce, only: %i[ show edit update destroy ]

  # GET /_petites_annonces or /_petites_annonces.json
  def index
    @_petites_annonces = PetitesAnnonce.all
  end

  # GET /_petites_annonces/1 or /_petites_annonces/1.json
  def show
  end

  # GET /_petites_annonces/new
  def new
    @_petites_annonce = PetitesAnnonce.new
  end

  # GET /_petites_annonces/1/edit
  def edit
  end

  # POST /_petites_annonces or /_petites_annonces.json
  def create
    @_petites_annonce = PetitesAnnonce.new(_petites_annonce_params)

    respond_to do |format|
      if @_petites_annonce.save
        format.html { redirect_to _petites_annonce_url(@_petites_annonce), notice: "Petites annonce was successfully created." }
        format.json { render :show, status: :created, location: @_petites_annonce }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_petites_annonce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_petites_annonces/1 or /_petites_annonces/1.json
  def update
    respond_to do |format|
      if @_petites_annonce.update(_petites_annonce_params)
        format.html { redirect_to _petites_annonce_url(@_petites_annonce), notice: "Petites annonce was successfully updated." }
        format.json { render :show, status: :ok, location: @_petites_annonce }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_petites_annonce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_petites_annonces/1 or /_petites_annonces/1.json
  def destroy
    @_petites_annonce.destroy!

    respond_to do |format|
      format.html { redirect_to _petites_annonces_url, notice: "Petites annonce was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__petites_annonce
      @_petites_annonce = PetitesAnnonce.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _petites_annonce_params
      params.require(:_petites_annonce).permit(:type, :type, :titre, :image, :_petites_annonces_section_id, :etat_produit, :etat_produit, :etat_produit, :etat_produit, :etat_produit, :_petites_annonces_pays_id, :_petites_annonces_lieu_id, :prix, :description, :statut, :statut, :comment, :acceptregles)
    end
end
