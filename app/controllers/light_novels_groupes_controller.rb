class LightNovelsGroupesController < ApplicationController
  before_action :set__light_novels_groupe, only: %i[ show edit update destroy ]

  # GET /_light_novels_groupes or /_light_novels_groupes.json
  def index
    @_light_novels_groupes = LightNovelsGroupe.all
  end

  # GET /_light_novels_groupes/1 or /_light_novels_groupes/1.json
  def show
  end

  # GET /_light_novels_groupes/new
  def new
    @_light_novels_groupe = LightNovelsGroupe.new
  end

  # GET /_light_novels_groupes/1/edit
  def edit
  end

  # POST /_light_novels_groupes or /_light_novels_groupes.json
  def create
    @_light_novels_groupe = LightNovelsGroupe.new(_light_novels_groupe_params)

    respond_to do |format|
      if @_light_novels_groupe.save
        format.html { redirect_to light_novels_groupe_url(@_light_novels_groupe), notice: "Light novels groupe was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_groupe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_groupes/1 or /_light_novels_groupes/1.json
  def update
    respond_to do |format|
      if @_light_novels_groupe.update(_light_novels_groupe_params)
        format.html { redirect_to light_novels_groupe_url(@_light_novels_groupe), notice: "Light novels groupe was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_groupe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_groupes/1 or /_light_novels_groupes/1.json
  def destroy
    @_light_novels_groupe.destroy!

    respond_to do |format|
      format.html { redirect_to light_novels_groupes_url, notice: "Light novels groupe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_groupe
      @_light_novels_groupe = LightNovelsGroupe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_groupe_params
      params.require(:light_novels_groupe).permit(:name)
    end
end
