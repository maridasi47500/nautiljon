class RecettesController < ApplicationController
  before_action :set__recette, only: %i[ show edit update destroy ]

  # GET /_recettes or /_recettes.json
  def index
    @_recettes = Recette.all
  end

  # GET /_recettes/1 or /_recettes/1.json
  def show
  end

  # GET /_recettes/new
  def new
    @_recette = Recette.new
  end

  # GET /_recettes/1/edit
  def edit
  end

  # POST /_recettes or /_recettes.json
  def create
    @_recette = Recette.new(_recette_params)

    respond_to do |format|
      if @_recette.save
        format.html { redirect_to recette_url(@_recette), notice: "Recette was successfully created." }
        format.json { render :show, status: :created, location: @_recette }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_recette.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_recettes/1 or /_recettes/1.json
  def update
    respond_to do |format|
      if @_recette.update(_recette_params)
        format.html { redirect_to recette_url(@_recette), notice: "Recette was successfully updated." }
        format.json { render :show, status: :ok, location: @_recette }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_recette.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_recettes/1 or /_recettes/1.json
  def destroy
    @_recette.destroy!

    respond_to do |format|
      format.html { redirect_to recettes_url, notice: "Recette was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__recette
      @_recette = Recette.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _recette_params
      params.require(:recette).permit(:nom, :_recettes_type_id, :image, :preparation, :cuisson, :nb_pers, :_recettes_plat_id, :_recettes_difficulte_id, :ingredients, :texte, :source, :comment, :acceptregles)
    end
end
