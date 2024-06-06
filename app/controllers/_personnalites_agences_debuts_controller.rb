class PersonnalitesAgencesDebutsController < ApplicationController
  before_action :set__personnalites_agences_debut, only: %i[ show edit update destroy ]

  # GET /_personnalites_agences_debuts or /_personnalites_agences_debuts.json
  def index
    @_personnalites_agences_debuts = PersonnalitesAgencesDebut.all
  end

  # GET /_personnalites_agences_debuts/1 or /_personnalites_agences_debuts/1.json
  def show
  end

  # GET /_personnalites_agences_debuts/new
  def new
    @_personnalites_agences_debut = PersonnalitesAgencesDebut.new
  end

  # GET /_personnalites_agences_debuts/1/edit
  def edit
  end

  # POST /_personnalites_agences_debuts or /_personnalites_agences_debuts.json
  def create
    @_personnalites_agences_debut = PersonnalitesAgencesDebut.new(_personnalites_agences_debut_params)

    respond_to do |format|
      if @_personnalites_agences_debut.save
        format.html { redirect_to _personnalites_agences_debut_url(@_personnalites_agences_debut), notice: "Personnalites agences debut was successfully created." }
        format.json { render :show, status: :created, location: @_personnalites_agences_debut }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnalites_agences_debut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnalites_agences_debuts/1 or /_personnalites_agences_debuts/1.json
  def update
    respond_to do |format|
      if @_personnalites_agences_debut.update(_personnalites_agences_debut_params)
        format.html { redirect_to _personnalites_agences_debut_url(@_personnalites_agences_debut), notice: "Personnalites agences debut was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnalites_agences_debut }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnalites_agences_debut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnalites_agences_debuts/1 or /_personnalites_agences_debuts/1.json
  def destroy
    @_personnalites_agences_debut.destroy!

    respond_to do |format|
      format.html { redirect_to _personnalites_agences_debuts_url, notice: "Personnalites agences debut was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnalites_agences_debut
      @_personnalites_agences_debut = PersonnalitesAgencesDebut.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnalites_agences_debut_params
      params.require(:_personnalites_agences_debut).permit(:name)
    end
end
