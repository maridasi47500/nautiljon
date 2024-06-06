class PersonnalitesIdTravauxesController < ApplicationController
  before_action :set__personnalites_id_travaux, only: %i[ show edit update destroy ]

  # GET /_personnalites_id_travauxes or /_personnalites_id_travauxes.json
  def index
    @_personnalites_id_travauxes = PersonnalitesIdTravaux.all
  end

  # GET /_personnalites_id_travauxes/1 or /_personnalites_id_travauxes/1.json
  def show
  end

  # GET /_personnalites_id_travauxes/new
  def new
    @_personnalites_id_travaux = PersonnalitesIdTravaux.new
  end

  # GET /_personnalites_id_travauxes/1/edit
  def edit
  end

  # POST /_personnalites_id_travauxes or /_personnalites_id_travauxes.json
  def create
    @_personnalites_id_travaux = PersonnalitesIdTravaux.new(_personnalites_id_travaux_params)

    respond_to do |format|
      if @_personnalites_id_travaux.save
        format.html { redirect_to personnalites_id_travaux_url(@_personnalites_id_travaux), notice: "Personnalites id travaux was successfully created." }
        format.json { render :show, status: :created, location: @_personnalites_id_travaux }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnalites_id_travaux.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnalites_id_travauxes/1 or /_personnalites_id_travauxes/1.json
  def update
    respond_to do |format|
      if @_personnalites_id_travaux.update(_personnalites_id_travaux_params)
        format.html { redirect_to personnalites_id_travaux_url(@_personnalites_id_travaux), notice: "Personnalites id travaux was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnalites_id_travaux }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnalites_id_travaux.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnalites_id_travauxes/1 or /_personnalites_id_travauxes/1.json
  def destroy
    @_personnalites_id_travaux.destroy!

    respond_to do |format|
      format.html { redirect_to personnalites_id_travauxes_url, notice: "Personnalites id travaux was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnalites_id_travaux
      @_personnalites_id_travaux = PersonnalitesIdTravaux.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnalites_id_travaux_params
      params.require(:personnalites_id_travaux).permit(:name)
    end
end
