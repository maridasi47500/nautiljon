class LightNovelsLitteratureAsiatiquesController < ApplicationController
  before_action :set__light_novels_litterature_asiatique, only: %i[ show edit update destroy ]

  # GET /_light_novels_litterature_asiatiques or /_light_novels_litterature_asiatiques.json
  def index
    @_light_novels_litterature_asiatiques = LightNovelsLitteratureAsiatique.all
  end

  # GET /_light_novels_litterature_asiatiques/1 or /_light_novels_litterature_asiatiques/1.json
  def show
  end

  # GET /_light_novels_litterature_asiatiques/new
  def new
    @_light_novels_litterature_asiatique = LightNovelsLitteratureAsiatique.new
  end

  # GET /_light_novels_litterature_asiatiques/1/edit
  def edit
  end

  # POST /_light_novels_litterature_asiatiques or /_light_novels_litterature_asiatiques.json
  def create
    @_light_novels_litterature_asiatique = LightNovelsLitteratureAsiatique.new(_light_novels_litterature_asiatique_params)

    respond_to do |format|
      if @_light_novels_litterature_asiatique.save
        format.html { redirect_to _light_novels_litterature_asiatique_url(@_light_novels_litterature_asiatique), notice: "Light novels litterature asiatique was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_litterature_asiatique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_litterature_asiatiques/1 or /_light_novels_litterature_asiatiques/1.json
  def update
    respond_to do |format|
      if @_light_novels_litterature_asiatique.update(_light_novels_litterature_asiatique_params)
        format.html { redirect_to _light_novels_litterature_asiatique_url(@_light_novels_litterature_asiatique), notice: "Light novels litterature asiatique was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_litterature_asiatique }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_litterature_asiatiques/1 or /_light_novels_litterature_asiatiques/1.json
  def destroy
    @_light_novels_litterature_asiatique.destroy!

    respond_to do |format|
      format.html { redirect_to _light_novels_litterature_asiatiques_url, notice: "Light novels litterature asiatique was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_litterature_asiatique
      @_light_novels_litterature_asiatique = LightNovelsLitteratureAsiatique.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_litterature_asiatique_params
      params.require(:_light_novels_litterature_asiatique).permit(:name)
    end
end
