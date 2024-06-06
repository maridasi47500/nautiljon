class BrevesController < ApplicationController
  before_action :set__brefe, only: %i[ show edit update destroy ]

  # GET /_breves or /_breves.json
  def index
    @_breves = Brefe.all
  end

  # GET /_breves/1 or /_breves/1.json
  def show
  end

  # GET /_breves/new
  def new
    @_brefe = Brefe.new(titre: "ertyu")
  end

  # GET /_breves/1/edit
  def edit
  end

  # POST /_breves or /_breves.json
  def create
    @_brefe = Brefe.new(_brefe_params)

    respond_to do |format|
      if @_brefe.save
        format.html { redirect_to brefe_url(@_brefe), notice: "Brefe was successfully created." }
        format.json { render :show, status: :created, location: @_brefe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_brefe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves/1 or /_breves/1.json
  def update
    respond_to do |format|
      if @_brefe.update(_brefe_params)
        format.html { redirect_to brefe_url(@_brefe), notice: "Brefe was successfully updated." }
        format.json { render :show, status: :ok, location: @_brefe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_brefe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves/1 or /_breves/1.json
  def destroy
    @_brefe.destroy!

    respond_to do |format|
      format.html { redirect_to breves_url, notice: "Brefe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__brefe
      @_brefe = Brefe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _brefe_params
      params.require(:brefe).permit(:titre, :_breves_cat_id, :image, :texte, :tags, :source, :source_url, :source2, :source2_url, :source3, :source3_url, :_breves_actualite_id, :_breves_actualite_mini_id, :_breves_people_id, :_breves_anime_id, :_breves_ln_id, :_breves_manga_id, :_breves_drama_id, :_breves_am_id, :_breves_litterature_asiatique_id, :_breves_livre_jeunesse_id, :_breves_magazine_id, :_breves_beau_livre_id, :_breves_jv_id, :_breves_dvd_id, :_breves_artbook_id, :_breves_photobook_id, :_breves_goodies_id, :_breves_cinema_id, :_breves_evenement_id, :_breves_concerts_id, :_breves_recette_id, :_breves_cd_id, :_breves_ost_id, :_breves_amv_id, :_breves_clip_id, :_breves_emission_tv_id, :_breves_emission_tv_numero_id, :_breves_sondage_id, :_breves_quizz_id, :_breves_concours_id, :_breves_manga_editeur_id, :_breves_anime_studio_id, :_breves_jv_societe_id, :_breves_societe_id, :_breves_culture_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
