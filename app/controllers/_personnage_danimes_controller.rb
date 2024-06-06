class PersonnageDanimesController < ApplicationController
  before_action :set__personnage_danime, only: %i[ show edit update destroy ]

  # GET /_personnage_danimes or /_personnage_danimes.json
  def index
    @_personnage_danimes = PersonnageDanime.all
  end

  # GET /_personnage_danimes/1 or /_personnage_danimes/1.json
  def show
  end

  # GET /_personnage_danimes/new
  def new
    @_personnage_danime = PersonnageDanime.new
  end

  # GET /_personnage_danimes/1/edit
  def edit
  end

  # POST /_personnage_danimes or /_personnage_danimes.json
  def create
    @_personnage_danime = PersonnageDanime.new(_personnage_danime_params)

    respond_to do |format|
      if @_personnage_danime.save
        format.html { redirect_to _personnage_danime_url(@_personnage_danime), notice: "Personnage danime was successfully created." }
        format.json { render :show, status: :created, location: @_personnage_danime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnage_danime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnage_danimes/1 or /_personnage_danimes/1.json
  def update
    respond_to do |format|
      if @_personnage_danime.update(_personnage_danime_params)
        format.html { redirect_to _personnage_danime_url(@_personnage_danime), notice: "Personnage danime was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnage_danime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnage_danime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnage_danimes/1 or /_personnage_danimes/1.json
  def destroy
    @_personnage_danime.destroy!

    respond_to do |format|
      format.html { redirect_to _personnage_danimes_url, notice: "Personnage danime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnage_danime
      @_personnage_danime = PersonnageDanime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnage_danime_params
      params.require(:_personnage_danime).permit(:nom, :nom_alternatif, :nom_suite, :nom_original, :_personnage_danimes_sexe_id, :_personnage_danimes_anime_id, :_personnage_danimes_anime_id, :_personnage_danimes_doubleur_pays_id, :_personnage_danimes_doubleur_people_id, :, :_personnage_danimes_doubleur_role_id, :_personnage_danimes_doubleur_pays_id, :_personnage_danimes_doubleur_people_id, :, :_personnage_danimes_doubleur_role_id, :special, :special, :image, :description, :_personnage_danimes_perso_id, :_personnage_danimes_perso_plus_id, :_personnage_danimes_perso_manga_id, :_personnage_danimes_jv_perso_id, :_personnage_danimes_goodies_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
