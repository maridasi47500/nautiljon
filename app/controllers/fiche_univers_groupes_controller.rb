class FicheUniversGroupesController < ApplicationController
  before_action :set__fiche_univers_groupe, only: %i[ show edit update destroy ]

  # GET /_fiche_univers_groupes or /_fiche_univers_groupes.json
  def index
    @_fiche_univers_groupes = FicheUniversGroupe.all
  end

  # GET /_fiche_univers_groupes/1 or /_fiche_univers_groupes/1.json
  def show
  end

  # GET /_fiche_univers_groupes/new
  def new
    @_fiche_univers_groupe = FicheUniversGroupe.new
  end

  # GET /_fiche_univers_groupes/1/edit
  def edit
  end

  # POST /_fiche_univers_groupes or /_fiche_univers_groupes.json
  def create
    @_fiche_univers_groupe = FicheUniversGroupe.new(_fiche_univers_groupe_params)

    respond_to do |format|
      if @_fiche_univers_groupe.save
        format.html { redirect_to fiche_univers_groupe_url(@_fiche_univers_groupe), notice: "Fiche univers groupe was successfully created." }
        format.json { render :show, status: :created, location: @_fiche_univers_groupe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_fiche_univers_groupes/1 or /_fiche_univers_groupes/1.json
  def update
    respond_to do |format|
      if @_fiche_univers_groupe.update(_fiche_univers_groupe_params)
        format.html { redirect_to fiche_univers_groupe_url(@_fiche_univers_groupe), notice: "Fiche univers groupe was successfully updated." }
        format.json { render :show, status: :ok, location: @_fiche_univers_groupe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_fiche_univers_groupes/1 or /_fiche_univers_groupes/1.json
  def destroy
    @_fiche_univers_groupe.destroy!

    respond_to do |format|
      format.html { redirect_to fiche_univers_groupes_url, notice: "Fiche univers groupe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__fiche_univers_groupe
      @_fiche_univers_groupe = FicheUniversGroupe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _fiche_univers_groupe_params
      params.require(:fiche_univers_groupe).permit(:name)
    end
end
