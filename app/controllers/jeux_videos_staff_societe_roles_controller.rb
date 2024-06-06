class JeuxVideosStaffSocieteRolesController < ApplicationController
  before_action :set__jeux_videos_staff_societe_role, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_staff_societe_roles or /_jeux_videos_staff_societe_roles.json
  def index
    @_jeux_videos_staff_societe_roles = JeuxVideosStaffSocieteRole.all
  end

  # GET /_jeux_videos_staff_societe_roles/1 or /_jeux_videos_staff_societe_roles/1.json
  def show
  end

  # GET /_jeux_videos_staff_societe_roles/new
  def new
    @_jeux_videos_staff_societe_role = JeuxVideosStaffSocieteRole.new
  end

  # GET /_jeux_videos_staff_societe_roles/1/edit
  def edit
  end

  # POST /_jeux_videos_staff_societe_roles or /_jeux_videos_staff_societe_roles.json
  def create
    @_jeux_videos_staff_societe_role = JeuxVideosStaffSocieteRole.new(_jeux_videos_staff_societe_role_params)

    respond_to do |format|
      if @_jeux_videos_staff_societe_role.save
        format.html { redirect_to jeux_videos_staff_societe_role_url(@_jeux_videos_staff_societe_role), notice: "Jeux videos staff societe role was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_staff_societe_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_staff_societe_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_staff_societe_roles/1 or /_jeux_videos_staff_societe_roles/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_staff_societe_role.update(_jeux_videos_staff_societe_role_params)
        format.html { redirect_to jeux_videos_staff_societe_role_url(@_jeux_videos_staff_societe_role), notice: "Jeux videos staff societe role was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_staff_societe_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_staff_societe_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_staff_societe_roles/1 or /_jeux_videos_staff_societe_roles/1.json
  def destroy
    @_jeux_videos_staff_societe_role.destroy!

    respond_to do |format|
      format.html { redirect_to jeux_videos_staff_societe_roles_url, notice: "Jeux videos staff societe role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_staff_societe_role
      @_jeux_videos_staff_societe_role = JeuxVideosStaffSocieteRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_staff_societe_role_params
      params.require(:jeux_videos_staff_societe_role).permit(:name)
    end
end
