class PersonnalitesAgencesFinsController < ApplicationController
  before_action :set__personnalites_agences_fin, only: %i[ show edit update destroy ]

  # GET /_personnalites_agences_fins or /_personnalites_agences_fins.json
  def index
    @_personnalites_agences_fins = PersonnalitesAgencesFin.all
  end

  # GET /_personnalites_agences_fins/1 or /_personnalites_agences_fins/1.json
  def show
  end

  # GET /_personnalites_agences_fins/new
  def new
    @_personnalites_agences_fin = PersonnalitesAgencesFin.new
  end

  # GET /_personnalites_agences_fins/1/edit
  def edit
  end

  # POST /_personnalites_agences_fins or /_personnalites_agences_fins.json
  def create
    @_personnalites_agences_fin = PersonnalitesAgencesFin.new(_personnalites_agences_fin_params)

    respond_to do |format|
      if @_personnalites_agences_fin.save
        format.html { redirect_to _personnalites_agences_fin_url(@_personnalites_agences_fin), notice: "Personnalites agences fin was successfully created." }
        format.json { render :show, status: :created, location: @_personnalites_agences_fin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnalites_agences_fin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnalites_agences_fins/1 or /_personnalites_agences_fins/1.json
  def update
    respond_to do |format|
      if @_personnalites_agences_fin.update(_personnalites_agences_fin_params)
        format.html { redirect_to _personnalites_agences_fin_url(@_personnalites_agences_fin), notice: "Personnalites agences fin was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnalites_agences_fin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnalites_agences_fin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnalites_agences_fins/1 or /_personnalites_agences_fins/1.json
  def destroy
    @_personnalites_agences_fin.destroy!

    respond_to do |format|
      format.html { redirect_to _personnalites_agences_fins_url, notice: "Personnalites agences fin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnalites_agences_fin
      @_personnalites_agences_fin = PersonnalitesAgencesFin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnalites_agences_fin_params
      params.require(:_personnalites_agences_fin).permit(:name)
    end
end
