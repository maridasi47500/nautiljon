class FicheUniversDramasController < ApplicationController
  before_action :set__fiche_univers_drama, only: %i[ show edit update destroy ]

  # GET /_fiche_univers_dramas or /_fiche_univers_dramas.json
  def index
    @_fiche_univers_dramas = FicheUniversDrama.all
  end

  # GET /_fiche_univers_dramas/1 or /_fiche_univers_dramas/1.json
  def show
  end

  # GET /_fiche_univers_dramas/new
  def new
    @_fiche_univers_drama = FicheUniversDrama.new
  end

  # GET /_fiche_univers_dramas/1/edit
  def edit
  end

  # POST /_fiche_univers_dramas or /_fiche_univers_dramas.json
  def create
    @_fiche_univers_drama = FicheUniversDrama.new(_fiche_univers_drama_params)

    respond_to do |format|
      if @_fiche_univers_drama.save
        format.html { redirect_to fiche_univers_drama_url(@_fiche_univers_drama), notice: "Fiche univers drama was successfully created." }
        format.json { render :show, status: :created, location: @_fiche_univers_drama }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_fiche_univers_dramas/1 or /_fiche_univers_dramas/1.json
  def update
    respond_to do |format|
      if @_fiche_univers_drama.update(_fiche_univers_drama_params)
        format.html { redirect_to fiche_univers_drama_url(@_fiche_univers_drama), notice: "Fiche univers drama was successfully updated." }
        format.json { render :show, status: :ok, location: @_fiche_univers_drama }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_fiche_univers_dramas/1 or /_fiche_univers_dramas/1.json
  def destroy
    @_fiche_univers_drama.destroy!

    respond_to do |format|
      format.html { redirect_to fiche_univers_dramas_url, notice: "Fiche univers drama was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__fiche_univers_drama
      @_fiche_univers_drama = FicheUniversDrama.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _fiche_univers_drama_params
      params.require(:fiche_univers_drama).permit(:name)
    end
end
