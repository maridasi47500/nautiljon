class LivresCulturesController < ApplicationController
  before_action :set__livres_culture, only: %i[ show edit update destroy ]

  # GET /_livres_cultures or /_livres_cultures.json
  def index
    @_livres_cultures = LivresCulture.all
  end

  # GET /_livres_cultures/1 or /_livres_cultures/1.json
  def show
  end

  # GET /_livres_cultures/new
  def new
    @_livres_culture = LivresCulture.new
  end

  # GET /_livres_cultures/1/edit
  def edit
  end

  # POST /_livres_cultures or /_livres_cultures.json
  def create
    @_livres_culture = LivresCulture.new(_livres_culture_params)

    respond_to do |format|
      if @_livres_culture.save
        format.html { redirect_to livres_culture_url(@_livres_culture), notice: "Livres culture was successfully created." }
        format.json { render :show, status: :created, location: @_livres_culture }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_cultures/1 or /_livres_cultures/1.json
  def update
    respond_to do |format|
      if @_livres_culture.update(_livres_culture_params)
        format.html { redirect_to livres_culture_url(@_livres_culture), notice: "Livres culture was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_culture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_cultures/1 or /_livres_cultures/1.json
  def destroy
    @_livres_culture.destroy!

    respond_to do |format|
      format.html { redirect_to livres_cultures_url, notice: "Livres culture was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_culture
      @_livres_culture = LivresCulture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_culture_params
      params.require(:livres_culture).permit(:name)
    end
end
