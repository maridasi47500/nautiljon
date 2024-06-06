class FicheUniversPersosController < ApplicationController
  before_action :set__fiche_univers_perso, only: %i[ show edit update destroy ]

  # GET /_fiche_univers_persos or /_fiche_univers_persos.json
  def index
    @_fiche_univers_persos = FicheUniversPerso.all
  end

  # GET /_fiche_univers_persos/1 or /_fiche_univers_persos/1.json
  def show
  end

  # GET /_fiche_univers_persos/new
  def new
    @_fiche_univers_perso = FicheUniversPerso.new
  end

  # GET /_fiche_univers_persos/1/edit
  def edit
  end

  # POST /_fiche_univers_persos or /_fiche_univers_persos.json
  def create
    @_fiche_univers_perso = FicheUniversPerso.new(_fiche_univers_perso_params)

    respond_to do |format|
      if @_fiche_univers_perso.save
        format.html { redirect_to _fiche_univers_perso_url(@_fiche_univers_perso), notice: "Fiche univers perso was successfully created." }
        format.json { render :show, status: :created, location: @_fiche_univers_perso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_perso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_fiche_univers_persos/1 or /_fiche_univers_persos/1.json
  def update
    respond_to do |format|
      if @_fiche_univers_perso.update(_fiche_univers_perso_params)
        format.html { redirect_to _fiche_univers_perso_url(@_fiche_univers_perso), notice: "Fiche univers perso was successfully updated." }
        format.json { render :show, status: :ok, location: @_fiche_univers_perso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_perso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_fiche_univers_persos/1 or /_fiche_univers_persos/1.json
  def destroy
    @_fiche_univers_perso.destroy!

    respond_to do |format|
      format.html { redirect_to _fiche_univers_persos_url, notice: "Fiche univers perso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__fiche_univers_perso
      @_fiche_univers_perso = FicheUniversPerso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _fiche_univers_perso_params
      params.require(:_fiche_univers_perso).permit(:name)
    end
end
