class FicheUniversJvsController < ApplicationController
  before_action :set__fiche_univers_jv, only: %i[ show edit update destroy ]

  # GET /_fiche_univers_jvs or /_fiche_univers_jvs.json
  def index
    @_fiche_univers_jvs = FicheUniversJv.all
  end

  # GET /_fiche_univers_jvs/1 or /_fiche_univers_jvs/1.json
  def show
  end

  # GET /_fiche_univers_jvs/new
  def new
    @_fiche_univers_jv = FicheUniversJv.new
  end

  # GET /_fiche_univers_jvs/1/edit
  def edit
  end

  # POST /_fiche_univers_jvs or /_fiche_univers_jvs.json
  def create
    @_fiche_univers_jv = FicheUniversJv.new(_fiche_univers_jv_params)

    respond_to do |format|
      if @_fiche_univers_jv.save
        format.html { redirect_to _fiche_univers_jv_url(@_fiche_univers_jv), notice: "Fiche univers jv was successfully created." }
        format.json { render :show, status: :created, location: @_fiche_univers_jv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_fiche_univers_jvs/1 or /_fiche_univers_jvs/1.json
  def update
    respond_to do |format|
      if @_fiche_univers_jv.update(_fiche_univers_jv_params)
        format.html { redirect_to _fiche_univers_jv_url(@_fiche_univers_jv), notice: "Fiche univers jv was successfully updated." }
        format.json { render :show, status: :ok, location: @_fiche_univers_jv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_fiche_univers_jvs/1 or /_fiche_univers_jvs/1.json
  def destroy
    @_fiche_univers_jv.destroy!

    respond_to do |format|
      format.html { redirect_to _fiche_univers_jvs_url, notice: "Fiche univers jv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__fiche_univers_jv
      @_fiche_univers_jv = FicheUniversJv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _fiche_univers_jv_params
      params.require(:_fiche_univers_jv).permit(:name)
    end
end
