class MangasStaffRolesController < ApplicationController
  before_action :set__mangas_staff_role, only: %i[ show edit update destroy ]

  # GET /_mangas_staff_roles or /_mangas_staff_roles.json
  def index
    @_mangas_staff_roles = MangasStaffRole.all
  end

  # GET /_mangas_staff_roles/1 or /_mangas_staff_roles/1.json
  def show
  end

  # GET /_mangas_staff_roles/new
  def new
    @_mangas_staff_role = MangasStaffRole.new
  end

  # GET /_mangas_staff_roles/1/edit
  def edit
  end

  # POST /_mangas_staff_roles or /_mangas_staff_roles.json
  def create
    @_mangas_staff_role = MangasStaffRole.new(_mangas_staff_role_params)

    respond_to do |format|
      if @_mangas_staff_role.save
        format.html { redirect_to mangas_staff_role_url(@_mangas_staff_role), notice: "Mangas staff role was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_staff_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_staff_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_staff_roles/1 or /_mangas_staff_roles/1.json
  def update
    respond_to do |format|
      if @_mangas_staff_role.update(_mangas_staff_role_params)
        format.html { redirect_to mangas_staff_role_url(@_mangas_staff_role), notice: "Mangas staff role was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_staff_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_staff_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_staff_roles/1 or /_mangas_staff_roles/1.json
  def destroy
    @_mangas_staff_role.destroy!

    respond_to do |format|
      format.html { redirect_to mangas_staff_roles_url, notice: "Mangas staff role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_staff_role
      @_mangas_staff_role = MangasStaffRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_staff_role_params
      params.require(:mangas_staff_role).permit(:name)
    end
end
