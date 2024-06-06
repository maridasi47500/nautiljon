class BrevesRecettesController < ApplicationController
  before_action :set__breves_recette, only: %i[ show edit update destroy ]

  # GET /_breves_recettes or /_breves_recettes.json
  def index
    @_breves_recettes = BrevesRecette.all
  end

  # GET /_breves_recettes/1 or /_breves_recettes/1.json
  def show
  end

  # GET /_breves_recettes/new
  def new
    @_breves_recette = BrevesRecette.new
  end

  # GET /_breves_recettes/1/edit
  def edit
  end

  # POST /_breves_recettes or /_breves_recettes.json
  def create
    @_breves_recette = BrevesRecette.new(_breves_recette_params)

    respond_to do |format|
      if @_breves_recette.save
        format.html { redirect_to breves_recette_url(@_breves_recette), notice: "Breves recette was successfully created." }
        format.json { render :show, status: :created, location: @_breves_recette }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_recette.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_recettes/1 or /_breves_recettes/1.json
  def update
    respond_to do |format|
      if @_breves_recette.update(_breves_recette_params)
        format.html { redirect_to breves_recette_url(@_breves_recette), notice: "Breves recette was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_recette }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_recette.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_recettes/1 or /_breves_recettes/1.json
  def destroy
    @_breves_recette.destroy!

    respond_to do |format|
      format.html { redirect_to breves_recettes_url, notice: "Breves recette was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_recette
      @_breves_recette = BrevesRecette.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_recette_params
      params.require(:breves_recette).permit(:name)
    end
end
