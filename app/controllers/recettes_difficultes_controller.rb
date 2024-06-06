class RecettesDifficultesController < ApplicationController
  before_action :set__recettes_difficulte, only: %i[ show edit update destroy ]

  # GET /_recettes_difficultes or /_recettes_difficultes.json
  def index
    @_recettes_difficultes = RecettesDifficulte.all
  end

  # GET /_recettes_difficultes/1 or /_recettes_difficultes/1.json
  def show
  end

  # GET /_recettes_difficultes/new
  def new
    @_recettes_difficulte = RecettesDifficulte.new
  end

  # GET /_recettes_difficultes/1/edit
  def edit
  end

  # POST /_recettes_difficultes or /_recettes_difficultes.json
  def create
    @_recettes_difficulte = RecettesDifficulte.new(_recettes_difficulte_params)

    respond_to do |format|
      if @_recettes_difficulte.save
        format.html { redirect_to recettes_difficulte_url(@_recettes_difficulte), notice: "Recettes difficulte was successfully created." }
        format.json { render :show, status: :created, location: @_recettes_difficulte }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_recettes_difficulte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_recettes_difficultes/1 or /_recettes_difficultes/1.json
  def update
    respond_to do |format|
      if @_recettes_difficulte.update(_recettes_difficulte_params)
        format.html { redirect_to recettes_difficulte_url(@_recettes_difficulte), notice: "Recettes difficulte was successfully updated." }
        format.json { render :show, status: :ok, location: @_recettes_difficulte }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_recettes_difficulte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_recettes_difficultes/1 or /_recettes_difficultes/1.json
  def destroy
    @_recettes_difficulte.destroy!

    respond_to do |format|
      format.html { redirect_to recettes_difficultes_url, notice: "Recettes difficulte was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__recettes_difficulte
      @_recettes_difficulte = RecettesDifficulte.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _recettes_difficulte_params
      params.require(:recettes_difficulte).permit(:name)
    end
end
