class GeneriqueDeJeuVideosStaffRolesController < ApplicationController
  before_action :set__generique_de_jeu_videos_staff_role, only: %i[ show edit update destroy ]

  # GET /_generique_de_jeu_videos_staff_roles or /_generique_de_jeu_videos_staff_roles.json
  def index
    @_generique_de_jeu_videos_staff_roles = GeneriqueDeJeuVideosStaffRole.all
  end

  # GET /_generique_de_jeu_videos_staff_roles/1 or /_generique_de_jeu_videos_staff_roles/1.json
  def show
  end

  # GET /_generique_de_jeu_videos_staff_roles/new
  def new
    @_generique_de_jeu_videos_staff_role = GeneriqueDeJeuVideosStaffRole.new
  end

  # GET /_generique_de_jeu_videos_staff_roles/1/edit
  def edit
  end

  # POST /_generique_de_jeu_videos_staff_roles or /_generique_de_jeu_videos_staff_roles.json
  def create
    @_generique_de_jeu_videos_staff_role = GeneriqueDeJeuVideosStaffRole.new(_generique_de_jeu_videos_staff_role_params)

    respond_to do |format|
      if @_generique_de_jeu_videos_staff_role.save
        format.html { redirect_to _generique_de_jeu_videos_staff_role_url(@_generique_de_jeu_videos_staff_role), notice: "Generique de jeu videos staff role was successfully created." }
        format.json { render :show, status: :created, location: @_generique_de_jeu_videos_staff_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_generique_de_jeu_videos_staff_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_generique_de_jeu_videos_staff_roles/1 or /_generique_de_jeu_videos_staff_roles/1.json
  def update
    respond_to do |format|
      if @_generique_de_jeu_videos_staff_role.update(_generique_de_jeu_videos_staff_role_params)
        format.html { redirect_to _generique_de_jeu_videos_staff_role_url(@_generique_de_jeu_videos_staff_role), notice: "Generique de jeu videos staff role was successfully updated." }
        format.json { render :show, status: :ok, location: @_generique_de_jeu_videos_staff_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_generique_de_jeu_videos_staff_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_generique_de_jeu_videos_staff_roles/1 or /_generique_de_jeu_videos_staff_roles/1.json
  def destroy
    @_generique_de_jeu_videos_staff_role.destroy!

    respond_to do |format|
      format.html { redirect_to _generique_de_jeu_videos_staff_roles_url, notice: "Generique de jeu videos staff role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__generique_de_jeu_videos_staff_role
      @_generique_de_jeu_videos_staff_role = GeneriqueDeJeuVideosStaffRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _generique_de_jeu_videos_staff_role_params
      params.require(:_generique_de_jeu_videos_staff_role).permit(:name)
    end
end
