class OstsPlateformesController < ApplicationController
  before_action :set_osts_plateforme, only: %i[ show edit update destroy ]

  # GET /osts_plateformes or /osts_plateformes.json
  def index
    @osts_plateformes = OstsPlateforme.all
  end

  # GET /osts_plateformes/1 or /osts_plateformes/1.json
  def show
  end

  # GET /osts_plateformes/new
  def new
    @osts_plateforme = OstsPlateforme.new
  end

  # GET /osts_plateformes/1/edit
  def edit
  end

  # POST /osts_plateformes or /osts_plateformes.json
  def create
    @osts_plateforme = OstsPlateforme.new(osts_plateforme_params)

    respond_to do |format|
      if @osts_plateforme.save
        format.html { redirect_to osts_plateforme_url(@osts_plateforme), notice: "Osts plateforme was successfully created." }
        format.json { render :show, status: :created, location: @osts_plateforme }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @osts_plateforme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /osts_plateformes/1 or /osts_plateformes/1.json
  def update
    respond_to do |format|
      if @osts_plateforme.update(osts_plateforme_params)
        format.html { redirect_to osts_plateforme_url(@osts_plateforme), notice: "Osts plateforme was successfully updated." }
        format.json { render :show, status: :ok, location: @osts_plateforme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @osts_plateforme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /osts_plateformes/1 or /osts_plateformes/1.json
  def destroy
    @osts_plateforme.destroy!

    respond_to do |format|
      format.html { redirect_to osts_plateformes_url, notice: "Osts plateforme was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_osts_plateforme
      @osts_plateforme = OstsPlateforme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def osts_plateforme_params
      params.require(:osts_plateforme).permit(:name)
    end
end
