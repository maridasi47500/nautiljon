class FicheUniversActualitesController < ApplicationController
  before_action :set__fiche_univers_actualite, only: %i[ show edit update destroy ]

  # GET /_fiche_univers_actualites or /_fiche_univers_actualites.json
  def index
    @_fiche_univers_actualites = FicheUniversActualite.all
  end

  # GET /_fiche_univers_actualites/1 or /_fiche_univers_actualites/1.json
  def show
  end

  # GET /_fiche_univers_actualites/new
  def new
    @_fiche_univers_actualite = FicheUniversActualite.new
  end

  # GET /_fiche_univers_actualites/1/edit
  def edit
  end

  # POST /_fiche_univers_actualites or /_fiche_univers_actualites.json
  def create
    @_fiche_univers_actualite = FicheUniversActualite.new(_fiche_univers_actualite_params)

    respond_to do |format|
      if @_fiche_univers_actualite.save
        format.html { redirect_to _fiche_univers_actualite_url(@_fiche_univers_actualite), notice: "Fiche univers actualite was successfully created." }
        format.json { render :show, status: :created, location: @_fiche_univers_actualite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_fiche_univers_actualites/1 or /_fiche_univers_actualites/1.json
  def update
    respond_to do |format|
      if @_fiche_univers_actualite.update(_fiche_univers_actualite_params)
        format.html { redirect_to _fiche_univers_actualite_url(@_fiche_univers_actualite), notice: "Fiche univers actualite was successfully updated." }
        format.json { render :show, status: :ok, location: @_fiche_univers_actualite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_fiche_univers_actualites/1 or /_fiche_univers_actualites/1.json
  def destroy
    @_fiche_univers_actualite.destroy!

    respond_to do |format|
      format.html { redirect_to _fiche_univers_actualites_url, notice: "Fiche univers actualite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__fiche_univers_actualite
      @_fiche_univers_actualite = FicheUniversActualite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _fiche_univers_actualite_params
      params.require(:_fiche_univers_actualite).permit(:name)
    end
end
