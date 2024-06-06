class FicheUniversAmsController < ApplicationController
  before_action :set__fiche_univers_am, only: %i[ show edit update destroy ]

  # GET /_fiche_univers_ams or /_fiche_univers_ams.json
  def index
    @_fiche_univers_ams = FicheUniversAm.all
  end

  # GET /_fiche_univers_ams/1 or /_fiche_univers_ams/1.json
  def show
  end

  # GET /_fiche_univers_ams/new
  def new
    @_fiche_univers_am = FicheUniversAm.new
  end

  # GET /_fiche_univers_ams/1/edit
  def edit
  end

  # POST /_fiche_univers_ams or /_fiche_univers_ams.json
  def create
    @_fiche_univers_am = FicheUniversAm.new(_fiche_univers_am_params)

    respond_to do |format|
      if @_fiche_univers_am.save
        format.html { redirect_to _fiche_univers_am_url(@_fiche_univers_am), notice: "Fiche univers am was successfully created." }
        format.json { render :show, status: :created, location: @_fiche_univers_am }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_fiche_univers_ams/1 or /_fiche_univers_ams/1.json
  def update
    respond_to do |format|
      if @_fiche_univers_am.update(_fiche_univers_am_params)
        format.html { redirect_to _fiche_univers_am_url(@_fiche_univers_am), notice: "Fiche univers am was successfully updated." }
        format.json { render :show, status: :ok, location: @_fiche_univers_am }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_fiche_univers_ams/1 or /_fiche_univers_ams/1.json
  def destroy
    @_fiche_univers_am.destroy!

    respond_to do |format|
      format.html { redirect_to _fiche_univers_ams_url, notice: "Fiche univers am was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__fiche_univers_am
      @_fiche_univers_am = FicheUniversAm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _fiche_univers_am_params
      params.require(:_fiche_univers_am).permit(:name)
    end
end
