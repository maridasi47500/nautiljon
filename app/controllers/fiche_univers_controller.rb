class FicheUniversController < ApplicationController
  before_action :set__fiche_univer, only: %i[ show edit update destroy ]

  # GET /_fiche_univers or /_fiche_univers.json
  def index
    @_fiche_univers = FicheUniver.all
  end

  # GET /_fiche_univers/1 or /_fiche_univers/1.json
  def show
  end

  # GET /_fiche_univers/new
  def new
    @_fiche_univer = FicheUniver.new
  end

  # GET /_fiche_univers/1/edit
  def edit
  end

  # POST /_fiche_univers or /_fiche_univers.json
  def create
    @_fiche_univer = FicheUniver.new(_fiche_univer_params)

    respond_to do |format|
      if @_fiche_univer.save
        format.html { redirect_to _fiche_univer_url(@_fiche_univer), notice: "Fiche univer was successfully created." }
        format.json { render :show, status: :created, location: @_fiche_univer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_fiche_univer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_fiche_univers/1 or /_fiche_univers/1.json
  def update
    respond_to do |format|
      if @_fiche_univer.update(_fiche_univer_params)
        format.html { redirect_to _fiche_univer_url(@_fiche_univer), notice: "Fiche univer was successfully updated." }
        format.json { render :show, status: :ok, location: @_fiche_univer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_fiche_univer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_fiche_univers/1 or /_fiche_univers/1.json
  def destroy
    @_fiche_univer.destroy!

    respond_to do |format|
      format.html { redirect_to _fiche_univers_url, notice: "Fiche univer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__fiche_univer
      @_fiche_univer = FicheUniver.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _fiche_univer_params
      params.require(:_fiche_univer).permit(:nom, :nom_alternatif, :nom_suite, :nom_original, :image, :_fiche_univers_cat_id, :description, :_fiche_univers_groupes_id, :_fiche_univers_univers_id, :_fiche_univers_anime_id, :_fiche_univers_perso_id, :_fiche_univers_manga_id, :_fiche_univers_perso_manga_id, :_fiche_univers_ln_id, :_fiche_univers_doujinshi_id, :_fiche_univers_jv_id, :_fiche_univers_jv_perso_id, :_fiche_univers_drama_id, :_fiche_univers_am_id, :_fiche_univers_litterature_asiatique_id, :_fiche_univers_people_id, :_fiche_univers_actualite_id, :_fiche_univers_actualite_mini_id, :_fiche_univers_culture_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
