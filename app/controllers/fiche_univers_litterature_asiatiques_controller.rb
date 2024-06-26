class FicheUniversLitteratureAsiatiquesController < ApplicationController
  before_action :set__fiche_univers_litterature_asiatique, only: %i[ show edit update destroy ]

  # GET /_fiche_univers_litterature_asiatiques or /_fiche_univers_litterature_asiatiques.json
  def index
    @_fiche_univers_litterature_asiatiques = FicheUniversLitteratureAsiatique.all
  end

  # GET /_fiche_univers_litterature_asiatiques/1 or /_fiche_univers_litterature_asiatiques/1.json
  def show
  end

  # GET /_fiche_univers_litterature_asiatiques/new
  def new
    @_fiche_univers_litterature_asiatique = FicheUniversLitteratureAsiatique.new
  end

  # GET /_fiche_univers_litterature_asiatiques/1/edit
  def edit
  end

  # POST /_fiche_univers_litterature_asiatiques or /_fiche_univers_litterature_asiatiques.json
  def create
    @_fiche_univers_litterature_asiatique = FicheUniversLitteratureAsiatique.new(_fiche_univers_litterature_asiatique_params)

    respond_to do |format|
      if @_fiche_univers_litterature_asiatique.save
        format.html { redirect_to fiche_univers_litterature_asiatique_url(@_fiche_univers_litterature_asiatique), notice: "Fiche univers litterature asiatique was successfully created." }
        format.json { render :show, status: :created, location: @_fiche_univers_litterature_asiatique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_fiche_univers_litterature_asiatiques/1 or /_fiche_univers_litterature_asiatiques/1.json
  def update
    respond_to do |format|
      if @_fiche_univers_litterature_asiatique.update(_fiche_univers_litterature_asiatique_params)
        format.html { redirect_to fiche_univers_litterature_asiatique_url(@_fiche_univers_litterature_asiatique), notice: "Fiche univers litterature asiatique was successfully updated." }
        format.json { render :show, status: :ok, location: @_fiche_univers_litterature_asiatique }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_fiche_univers_litterature_asiatiques/1 or /_fiche_univers_litterature_asiatiques/1.json
  def destroy
    @_fiche_univers_litterature_asiatique.destroy!

    respond_to do |format|
      format.html { redirect_to fiche_univers_litterature_asiatiques_url, notice: "Fiche univers litterature asiatique was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__fiche_univers_litterature_asiatique
      @_fiche_univers_litterature_asiatique = FicheUniversLitteratureAsiatique.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _fiche_univers_litterature_asiatique_params
      params.require(:fiche_univers_litterature_asiatique).permit(:name)
    end
end
