class PersonnagesDeJeuxVideosDoubleurRolesController < ApplicationController
  before_action :set__personnages_de_jeux_videos_doubleur_role, only: %i[ show edit update destroy ]

  # GET /_personnages_de_jeux_videos_doubleur_roles or /_personnages_de_jeux_videos_doubleur_roles.json
  def index
    @_personnages_de_jeux_videos_doubleur_roles = PersonnagesDeJeuxVideosDoubleurRole.all
  end

  # GET /_personnages_de_jeux_videos_doubleur_roles/1 or /_personnages_de_jeux_videos_doubleur_roles/1.json
  def show
  end

  # GET /_personnages_de_jeux_videos_doubleur_roles/new
  def new
    @_personnages_de_jeux_videos_doubleur_role = PersonnagesDeJeuxVideosDoubleurRole.new
  end

  # GET /_personnages_de_jeux_videos_doubleur_roles/1/edit
  def edit
  end

  # POST /_personnages_de_jeux_videos_doubleur_roles or /_personnages_de_jeux_videos_doubleur_roles.json
  def create
    @_personnages_de_jeux_videos_doubleur_role = PersonnagesDeJeuxVideosDoubleurRole.new(_personnages_de_jeux_videos_doubleur_role_params)

    respond_to do |format|
      if @_personnages_de_jeux_videos_doubleur_role.save
        format.html { redirect_to _personnages_de_jeux_videos_doubleur_role_url(@_personnages_de_jeux_videos_doubleur_role), notice: "Personnages de jeux videos doubleur role was successfully created." }
        format.json { render :show, status: :created, location: @_personnages_de_jeux_videos_doubleur_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnages_de_jeux_videos_doubleur_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnages_de_jeux_videos_doubleur_roles/1 or /_personnages_de_jeux_videos_doubleur_roles/1.json
  def update
    respond_to do |format|
      if @_personnages_de_jeux_videos_doubleur_role.update(_personnages_de_jeux_videos_doubleur_role_params)
        format.html { redirect_to _personnages_de_jeux_videos_doubleur_role_url(@_personnages_de_jeux_videos_doubleur_role), notice: "Personnages de jeux videos doubleur role was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnages_de_jeux_videos_doubleur_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnages_de_jeux_videos_doubleur_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnages_de_jeux_videos_doubleur_roles/1 or /_personnages_de_jeux_videos_doubleur_roles/1.json
  def destroy
    @_personnages_de_jeux_videos_doubleur_role.destroy!

    respond_to do |format|
      format.html { redirect_to _personnages_de_jeux_videos_doubleur_roles_url, notice: "Personnages de jeux videos doubleur role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnages_de_jeux_videos_doubleur_role
      @_personnages_de_jeux_videos_doubleur_role = PersonnagesDeJeuxVideosDoubleurRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnages_de_jeux_videos_doubleur_role_params
      params.require(:_personnages_de_jeux_videos_doubleur_role).permit(:name)
    end
end
