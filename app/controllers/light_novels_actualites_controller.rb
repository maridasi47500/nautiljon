class LightNovelsActualitesController < ApplicationController
  before_action :set__light_novels_actualite, only: %i[ show edit update destroy ]

  # GET /_light_novels_actualites or /_light_novels_actualites.json
  def index
    @_light_novels_actualites = LightNovelsActualite.all
  end

  # GET /_light_novels_actualites/1 or /_light_novels_actualites/1.json
  def show
  end

  # GET /_light_novels_actualites/new
  def new
    @_light_novels_actualite = LightNovelsActualite.new
  end

  # GET /_light_novels_actualites/1/edit
  def edit
  end

  # POST /_light_novels_actualites or /_light_novels_actualites.json
  def create
    @_light_novels_actualite = LightNovelsActualite.new(_light_novels_actualite_params)

    respond_to do |format|
      if @_light_novels_actualite.save
        format.html { redirect_to light_novels_actualite_url(@_light_novels_actualite), notice: "Light novels actualite was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_actualite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_actualites/1 or /_light_novels_actualites/1.json
  def update
    respond_to do |format|
      if @_light_novels_actualite.update(_light_novels_actualite_params)
        format.html { redirect_to light_novels_actualite_url(@_light_novels_actualite), notice: "Light novels actualite was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_actualite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_actualites/1 or /_light_novels_actualites/1.json
  def destroy
    @_light_novels_actualite.destroy!

    respond_to do |format|
      format.html { redirect_to light_novels_actualites_url, notice: "Light novels actualite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_actualite
      @_light_novels_actualite = LightNovelsActualite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_actualite_params
      params.require(:light_novels_actualite).permit(:name)
    end
end
