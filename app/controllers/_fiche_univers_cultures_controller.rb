class FicheUniversCulturesController < ApplicationController
  before_action :set__fiche_univers_culture, only: %i[ show edit update destroy ]

  # GET /_fiche_univers_cultures or /_fiche_univers_cultures.json
  def index
    @_fiche_univers_cultures = FicheUniversCulture.all
  end

  # GET /_fiche_univers_cultures/1 or /_fiche_univers_cultures/1.json
  def show
  end

  # GET /_fiche_univers_cultures/new
  def new
    @_fiche_univers_culture = FicheUniversCulture.new
  end

  # GET /_fiche_univers_cultures/1/edit
  def edit
  end

  # POST /_fiche_univers_cultures or /_fiche_univers_cultures.json
  def create
    @_fiche_univers_culture = FicheUniversCulture.new(_fiche_univers_culture_params)

    respond_to do |format|
      if @_fiche_univers_culture.save
        format.html { redirect_to _fiche_univers_culture_url(@_fiche_univers_culture), notice: "Fiche univers culture was successfully created." }
        format.json { render :show, status: :created, location: @_fiche_univers_culture }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_fiche_univers_cultures/1 or /_fiche_univers_cultures/1.json
  def update
    respond_to do |format|
      if @_fiche_univers_culture.update(_fiche_univers_culture_params)
        format.html { redirect_to _fiche_univers_culture_url(@_fiche_univers_culture), notice: "Fiche univers culture was successfully updated." }
        format.json { render :show, status: :ok, location: @_fiche_univers_culture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_fiche_univers_cultures/1 or /_fiche_univers_cultures/1.json
  def destroy
    @_fiche_univers_culture.destroy!

    respond_to do |format|
      format.html { redirect_to _fiche_univers_cultures_url, notice: "Fiche univers culture was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__fiche_univers_culture
      @_fiche_univers_culture = FicheUniversCulture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _fiche_univers_culture_params
      params.require(:_fiche_univers_culture).permit(:name)
    end
end
