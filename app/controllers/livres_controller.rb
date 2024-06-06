class LivresController < ApplicationController
  before_action :set__livre, only: %i[ show edit update destroy ]

  # GET /_livres or /_livres.json
  def index
    @_livres = Livre.all
  end

  # GET /_livres/1 or /_livres/1.json
  def show
  end

  # GET /_livres/new
  def new
    @_livre = Livre.new
  end

  # GET /_livres/1/edit
  def edit
  end

  # POST /_livres or /_livres.json
  def create
    @_livre = Livre.new(_livre_params)

    respond_to do |format|
      if @_livre.save
        format.html { redirect_to livre_url(@_livre), notice: "Livre was successfully created." }
        format.json { render :show, status: :created, location: @_livre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres/1 or /_livres/1.json
  def update
    respond_to do |format|
      if @_livre.update(_livre_params)
        format.html { redirect_to livre_url(@_livre), notice: "Livre was successfully updated." }
        format.json { render :show, status: :ok, location: @_livre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres/1 or /_livres/1.json
  def destroy
    @_livre.destroy!

    respond_to do |format|
      format.html { redirect_to livres_url, notice: "Livre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livre
      @_livre = Livre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livre_params
      params.require(:livre).permit(:_livres_type_id, :_livres_type_secondaire_id, :titre, :titre_original_latin, :titre_original, :image, :date_parution_vo_jj, :date_parution_vo_mm, :date_parution_vo_aaaa, :date_parution_vf_jj, :date_parution_vf_mm, :date_parution_vf_aaaa, :_livres_pays_id, :ean, :pages, :prix, :gratuit, :age, :_livres_statut_publication_id, :_livres_staff_role_id, :_livres_staff_people_id, :_livres_staff_role_id, :_livres_staff_people_id, :_livres_editeurs_vo_id, :_livres_editeurs_vo_id, :_livres_editeurs_vf_id, :_livres_editeurs_vf_id, :collection, :traducteur, :_livres_genres_id, :_livres_genres_id, :_livres_themes_id, :_livres_themes_id, :_livres_pays_theme_id, :_livres_public_averti_id, :resume, :preview, :_livres_groupes_id, :_livres_anime_id, :_livres_anime_plus_id, :_livres_ln_id, :_livres_ln_plus_id, :_livres_manga_id, :_livres_manga_plus_id, :_livres_drama_id, :_livres_drama_plus_id, :_livres_am_id, :_livres_am_plus_id, :_livres_litterature_asiatique_id, :_livres_litterature_asiatique_plus_id, :_livres_goodies_id, :_livres_actualite_id, :_livres_culture_id, :_livres_actualite_mini_id, :_livres_people_id, :_livres_jv_id, :_livres_jv_plus_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
