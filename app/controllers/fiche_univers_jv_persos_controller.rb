class FicheUniversJvPersosController < ApplicationController
  before_action :set__fiche_univers_jv_perso, only: %i[ show edit update destroy ]

  # GET /_fiche_univers_jv_persos or /_fiche_univers_jv_persos.json
  def index
    @_fiche_univers_jv_persos = FicheUniversJvPerso.all
  end

  # GET /_fiche_univers_jv_persos/1 or /_fiche_univers_jv_persos/1.json
  def show
  end

  # GET /_fiche_univers_jv_persos/new
  def new
    @_fiche_univers_jv_perso = FicheUniversJvPerso.new
  end

  # GET /_fiche_univers_jv_persos/1/edit
  def edit
  end

  # POST /_fiche_univers_jv_persos or /_fiche_univers_jv_persos.json
  def create
    @_fiche_univers_jv_perso = FicheUniversJvPerso.new(_fiche_univers_jv_perso_params)

    respond_to do |format|
      if @_fiche_univers_jv_perso.save
        format.html { redirect_to fiche_univers_jv_perso_url(@_fiche_univers_jv_perso), notice: "Fiche univers jv perso was successfully created." }
        format.json { render :show, status: :created, location: @_fiche_univers_jv_perso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_jv_perso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_fiche_univers_jv_persos/1 or /_fiche_univers_jv_persos/1.json
  def update
    respond_to do |format|
      if @_fiche_univers_jv_perso.update(_fiche_univers_jv_perso_params)
        format.html { redirect_to fiche_univers_jv_perso_url(@_fiche_univers_jv_perso), notice: "Fiche univers jv perso was successfully updated." }
        format.json { render :show, status: :ok, location: @_fiche_univers_jv_perso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_jv_perso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_fiche_univers_jv_persos/1 or /_fiche_univers_jv_persos/1.json
  def destroy
    @_fiche_univers_jv_perso.destroy!

    respond_to do |format|
      format.html { redirect_to fiche_univers_jv_persos_url, notice: "Fiche univers jv perso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__fiche_univers_jv_perso
      @_fiche_univers_jv_perso = FicheUniversJvPerso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _fiche_univers_jv_perso_params
      params.require(:fiche_univers_jv_perso).permit(:name)
    end
end
