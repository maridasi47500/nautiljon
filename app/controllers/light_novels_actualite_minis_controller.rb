class LightNovelsActualiteMinisController < ApplicationController
  before_action :set__light_novels_actualite_mini, only: %i[ show edit update destroy ]

  # GET /_light_novels_actualite_minis or /_light_novels_actualite_minis.json
  def index
    @_light_novels_actualite_minis = LightNovelsActualiteMini.all
  end

  # GET /_light_novels_actualite_minis/1 or /_light_novels_actualite_minis/1.json
  def show
  end

  # GET /_light_novels_actualite_minis/new
  def new
    @_light_novels_actualite_mini = LightNovelsActualiteMini.new
  end

  # GET /_light_novels_actualite_minis/1/edit
  def edit
  end

  # POST /_light_novels_actualite_minis or /_light_novels_actualite_minis.json
  def create
    @_light_novels_actualite_mini = LightNovelsActualiteMini.new(_light_novels_actualite_mini_params)

    respond_to do |format|
      if @_light_novels_actualite_mini.save
        format.html { redirect_to _light_novels_actualite_mini_url(@_light_novels_actualite_mini), notice: "Light novels actualite mini was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_actualite_mini }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_actualite_minis/1 or /_light_novels_actualite_minis/1.json
  def update
    respond_to do |format|
      if @_light_novels_actualite_mini.update(_light_novels_actualite_mini_params)
        format.html { redirect_to _light_novels_actualite_mini_url(@_light_novels_actualite_mini), notice: "Light novels actualite mini was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_actualite_mini }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_actualite_minis/1 or /_light_novels_actualite_minis/1.json
  def destroy
    @_light_novels_actualite_mini.destroy!

    respond_to do |format|
      format.html { redirect_to _light_novels_actualite_minis_url, notice: "Light novels actualite mini was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_actualite_mini
      @_light_novels_actualite_mini = LightNovelsActualiteMini.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_actualite_mini_params
      params.require(:_light_novels_actualite_mini).permit(:name)
    end
end
