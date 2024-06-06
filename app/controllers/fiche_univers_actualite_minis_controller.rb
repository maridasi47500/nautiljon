class FicheUniversActualiteMinisController < ApplicationController
  before_action :set__fiche_univers_actualite_mini, only: %i[ show edit update destroy ]

  # GET /_fiche_univers_actualite_minis or /_fiche_univers_actualite_minis.json
  def index
    @_fiche_univers_actualite_minis = FicheUniversActualiteMini.all
  end

  # GET /_fiche_univers_actualite_minis/1 or /_fiche_univers_actualite_minis/1.json
  def show
  end

  # GET /_fiche_univers_actualite_minis/new
  def new
    @_fiche_univers_actualite_mini = FicheUniversActualiteMini.new
  end

  # GET /_fiche_univers_actualite_minis/1/edit
  def edit
  end

  # POST /_fiche_univers_actualite_minis or /_fiche_univers_actualite_minis.json
  def create
    @_fiche_univers_actualite_mini = FicheUniversActualiteMini.new(_fiche_univers_actualite_mini_params)

    respond_to do |format|
      if @_fiche_univers_actualite_mini.save
        format.html { redirect_to fiche_univers_actualite_mini_url(@_fiche_univers_actualite_mini), notice: "Fiche univers actualite mini was successfully created." }
        format.json { render :show, status: :created, location: @_fiche_univers_actualite_mini }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_fiche_univers_actualite_minis/1 or /_fiche_univers_actualite_minis/1.json
  def update
    respond_to do |format|
      if @_fiche_univers_actualite_mini.update(_fiche_univers_actualite_mini_params)
        format.html { redirect_to fiche_univers_actualite_mini_url(@_fiche_univers_actualite_mini), notice: "Fiche univers actualite mini was successfully updated." }
        format.json { render :show, status: :ok, location: @_fiche_univers_actualite_mini }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_fiche_univers_actualite_minis/1 or /_fiche_univers_actualite_minis/1.json
  def destroy
    @_fiche_univers_actualite_mini.destroy!

    respond_to do |format|
      format.html { redirect_to fiche_univers_actualite_minis_url, notice: "Fiche univers actualite mini was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__fiche_univers_actualite_mini
      @_fiche_univers_actualite_mini = FicheUniversActualiteMini.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _fiche_univers_actualite_mini_params
      params.require(:fiche_univers_actualite_mini).permit(:name)
    end
end
