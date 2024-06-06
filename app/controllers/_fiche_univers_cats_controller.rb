class FicheUniversCatsController < ApplicationController
  before_action :set__fiche_univers_cat, only: %i[ show edit update destroy ]

  # GET /_fiche_univers_cats or /_fiche_univers_cats.json
  def index
    @_fiche_univers_cats = FicheUniversCat.all
  end

  # GET /_fiche_univers_cats/1 or /_fiche_univers_cats/1.json
  def show
  end

  # GET /_fiche_univers_cats/new
  def new
    @_fiche_univers_cat = FicheUniversCat.new
  end

  # GET /_fiche_univers_cats/1/edit
  def edit
  end

  # POST /_fiche_univers_cats or /_fiche_univers_cats.json
  def create
    @_fiche_univers_cat = FicheUniversCat.new(_fiche_univers_cat_params)

    respond_to do |format|
      if @_fiche_univers_cat.save
        format.html { redirect_to _fiche_univers_cat_url(@_fiche_univers_cat), notice: "Fiche univers cat was successfully created." }
        format.json { render :show, status: :created, location: @_fiche_univers_cat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_fiche_univers_cats/1 or /_fiche_univers_cats/1.json
  def update
    respond_to do |format|
      if @_fiche_univers_cat.update(_fiche_univers_cat_params)
        format.html { redirect_to _fiche_univers_cat_url(@_fiche_univers_cat), notice: "Fiche univers cat was successfully updated." }
        format.json { render :show, status: :ok, location: @_fiche_univers_cat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_fiche_univers_cats/1 or /_fiche_univers_cats/1.json
  def destroy
    @_fiche_univers_cat.destroy!

    respond_to do |format|
      format.html { redirect_to _fiche_univers_cats_url, notice: "Fiche univers cat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__fiche_univers_cat
      @_fiche_univers_cat = FicheUniversCat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _fiche_univers_cat_params
      params.require(:_fiche_univers_cat).permit(:name)
    end
end
