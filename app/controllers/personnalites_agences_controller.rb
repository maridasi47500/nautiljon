class PersonnalitesAgencesController < ApplicationController
  before_action :set__personnalites_agence, only: %i[ show edit update destroy ]

  # GET /_personnalites_agences or /_personnalites_agences.json
  def index
    @_personnalites_agences = PersonnalitesAgence.all
  end

  # GET /_personnalites_agences/1 or /_personnalites_agences/1.json
  def show
  end

  # GET /_personnalites_agences/new
  def new
    @_personnalites_agence = PersonnalitesAgence.new
  end

  # GET /_personnalites_agences/1/edit
  def edit
  end

  # POST /_personnalites_agences or /_personnalites_agences.json
  def create
    @_personnalites_agence = PersonnalitesAgence.new(_personnalites_agence_params)

    respond_to do |format|
      if @_personnalites_agence.save
        format.html { redirect_to personnalites_agence_url(@_personnalites_agence), notice: "Personnalites agence was successfully created." }
        format.json { render :show, status: :created, location: @_personnalites_agence }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnalites_agence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnalites_agences/1 or /_personnalites_agences/1.json
  def update
    respond_to do |format|
      if @_personnalites_agence.update(_personnalites_agence_params)
        format.html { redirect_to personnalites_agence_url(@_personnalites_agence), notice: "Personnalites agence was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnalites_agence }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnalites_agence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnalites_agences/1 or /_personnalites_agences/1.json
  def destroy
    @_personnalites_agence.destroy!

    respond_to do |format|
      format.html { redirect_to personnalites_agences_url, notice: "Personnalites agence was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnalites_agence
      @_personnalites_agence = PersonnalitesAgence.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnalites_agence_params
      params.require(:personnalites_agence).permit(:name)
    end
end
