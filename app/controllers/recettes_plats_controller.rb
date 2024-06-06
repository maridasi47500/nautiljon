class RecettesPlatsController < ApplicationController
  before_action :set__recettes_plat, only: %i[ show edit update destroy ]

  # GET /_recettes_plats or /_recettes_plats.json
  def index
    @_recettes_plats = RecettesPlat.all
  end

  # GET /_recettes_plats/1 or /_recettes_plats/1.json
  def show
  end

  # GET /_recettes_plats/new
  def new
    @_recettes_plat = RecettesPlat.new
  end

  # GET /_recettes_plats/1/edit
  def edit
  end

  # POST /_recettes_plats or /_recettes_plats.json
  def create
    @_recettes_plat = RecettesPlat.new(_recettes_plat_params)

    respond_to do |format|
      if @_recettes_plat.save
        format.html { redirect_to _recettes_plat_url(@_recettes_plat), notice: "Recettes plat was successfully created." }
        format.json { render :show, status: :created, location: @_recettes_plat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_recettes_plat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_recettes_plats/1 or /_recettes_plats/1.json
  def update
    respond_to do |format|
      if @_recettes_plat.update(_recettes_plat_params)
        format.html { redirect_to _recettes_plat_url(@_recettes_plat), notice: "Recettes plat was successfully updated." }
        format.json { render :show, status: :ok, location: @_recettes_plat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_recettes_plat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_recettes_plats/1 or /_recettes_plats/1.json
  def destroy
    @_recettes_plat.destroy!

    respond_to do |format|
      format.html { redirect_to _recettes_plats_url, notice: "Recettes plat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__recettes_plat
      @_recettes_plat = RecettesPlat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _recettes_plat_params
      params.require(:_recettes_plat).permit(:name)
    end
end
