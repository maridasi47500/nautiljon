class PersonnalitesController < ApplicationController
  before_action :set__personnalite, only: %i[ show edit update destroy ]

  # GET /_personnalites or /_personnalites.json
  def index
    @_personnalites = Personnalite.all
  end

  # GET /_personnalites/1 or /_personnalites/1.json
  def show
  end

  # GET /_personnalites/new
  def new
    @_personnalite = Personnalite.new
  end

  # GET /_personnalites/1/edit
  def edit
  end

  # POST /_personnalites or /_personnalites.json
  def create
    @_personnalite = Personnalite.new(_personnalite_params)

    respond_to do |format|
      if @_personnalite.save
        format.html { redirect_to _personnalite_url(@_personnalite), notice: "Personnalite was successfully created." }
        format.json { render :show, status: :created, location: @_personnalite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnalite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnalites/1 or /_personnalites/1.json
  def update
    respond_to do |format|
      if @_personnalite.update(_personnalite_params)
        format.html { redirect_to _personnalite_url(@_personnalite), notice: "Personnalite was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnalite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnalite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnalites/1 or /_personnalites/1.json
  def destroy
    @_personnalite.destroy!

    respond_to do |format|
      format.html { redirect_to _personnalites_url, notice: "Personnalite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnalite
      @_personnalite = Personnalite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnalite_params
      params.require(:_personnalite).permit(:nom, :nom_alternatif, :nom_alternatif_suite, :nom_original_latin, :nom_original, :nom_original_2, :nom_original_3, :nom_original_4, :_personnalites_type_people_id, :_personnalites_sexe_id, :_personnalites_pays_id, :_personnalites_pays_id, :decede, :date_nais_jj, :date_nais_mm, :date_nais_aaaa, :date_deces_jj, :date_deces_mm, :date_deces_aaaa, :image, :_personnalites_statut_id, :debut, :fin, :_personnalites_genres_id, :_personnalites_genres_id, :_personnalites_labels_id, :_personnalites_labels_debut_id, :_personnalites_labels_fin_id, :_personnalites_labels_ex_id, :_personnalites_labels_id, :_personnalites_labels_debut_id, :_personnalites_labels_fin_id, :_personnalites_labels_ex_id, :_personnalites_agences_id, :_personnalites_agences_debut_id, :_personnalites_agences_fin_id, :_personnalites_agences_ex_id, :_personnalites_agences_id, :_personnalites_agences_debut_id, :_personnalites_agences_fin_id, :_personnalites_agences_ex_id, :_personnalites_roles_id, :_personnalites_roles_id, :_personnalites_id_membre_id, :_personnalites_ex_id, :_personnalites_ex_debut_id, :_personnalites_ex_fin_id, :bio, :_personnalites_id_galerie_id, :liaison_auto_galerie, :_personnalites_id_travaux_id, :liaison_auto_cosplay, :_personnalites_people_id, :_personnalites_people_plus_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
