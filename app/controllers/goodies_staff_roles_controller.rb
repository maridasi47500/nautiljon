class GoodiesStaffRolesController < ApplicationController
  before_action :set__goodies_staff_role, only: %i[ show edit update destroy ]

  # GET /_goodies_staff_roles or /_goodies_staff_roles.json
  def index
    @_goodies_staff_roles = GoodiesStaffRole.all
  end

  # GET /_goodies_staff_roles/1 or /_goodies_staff_roles/1.json
  def show
  end

  # GET /_goodies_staff_roles/new
  def new
    @_goodies_staff_role = GoodiesStaffRole.new
  end

  # GET /_goodies_staff_roles/1/edit
  def edit
  end

  # POST /_goodies_staff_roles or /_goodies_staff_roles.json
  def create
    @_goodies_staff_role = GoodiesStaffRole.new(_goodies_staff_role_params)

    respond_to do |format|
      if @_goodies_staff_role.save
        format.html { redirect_to goodies_staff_role_url(@_goodies_staff_role), notice: "Goodies staff role was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_staff_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_staff_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_staff_roles/1 or /_goodies_staff_roles/1.json
  def update
    respond_to do |format|
      if @_goodies_staff_role.update(_goodies_staff_role_params)
        format.html { redirect_to goodies_staff_role_url(@_goodies_staff_role), notice: "Goodies staff role was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_staff_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_staff_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_staff_roles/1 or /_goodies_staff_roles/1.json
  def destroy
    @_goodies_staff_role.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_staff_roles_url, notice: "Goodies staff role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_staff_role
      @_goodies_staff_role = GoodiesStaffRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_staff_role_params
      params.require(:goodies_staff_role).permit(:name)
    end
end
