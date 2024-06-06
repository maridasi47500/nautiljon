class FicheUniversUniversController < ApplicationController
  before_action :set__fiche_univers_univer, only: %i[ show edit update destroy ]

  # GET /_fiche_univers_univers or /_fiche_univers_univers.json
  def index
    @_fiche_univers_univers = FicheUniversUniver.all
  end

  # GET /_fiche_univers_univers/1 or /_fiche_univers_univers/1.json
  def show
  end

  # GET /_fiche_univers_univers/new
  def new
    @_fiche_univers_univer = FicheUniversUniver.new
  end

  # GET /_fiche_univers_univers/1/edit
  def edit
  end

  # POST /_fiche_univers_univers or /_fiche_univers_univers.json
  def create
    @_fiche_univers_univer = FicheUniversUniver.new(_fiche_univers_univer_params)

    respond_to do |format|
      if @_fiche_univers_univer.save
        format.html { redirect_to fiche_univers_univer_url(@_fiche_univers_univer), notice: "Fiche univers univer was successfully created." }
        format.json { render :show, status: :created, location: @_fiche_univers_univer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_univer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_fiche_univers_univers/1 or /_fiche_univers_univers/1.json
  def update
    respond_to do |format|
      if @_fiche_univers_univer.update(_fiche_univers_univer_params)
        format.html { redirect_to fiche_univers_univer_url(@_fiche_univers_univer), notice: "Fiche univers univer was successfully updated." }
        format.json { render :show, status: :ok, location: @_fiche_univers_univer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_univer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_fiche_univers_univers/1 or /_fiche_univers_univers/1.json
  def destroy
    @_fiche_univers_univer.destroy!

    respond_to do |format|
      format.html { redirect_to fiche_univers_univers_url, notice: "Fiche univers univer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__fiche_univers_univer
      @_fiche_univers_univer = FicheUniversUniver.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _fiche_univers_univer_params
      params.require(:fiche_univers_univer).permit(:name)
    end
end
