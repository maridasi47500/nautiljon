class ParolesStaffRolesController < ApplicationController
  before_action :set__paroles_staff_role, only: %i[ show edit update destroy ]

  # GET /_paroles_staff_roles or /_paroles_staff_roles.json
  def index
    @_paroles_staff_roles = ParolesStaffRole.all
  end

  # GET /_paroles_staff_roles/1 or /_paroles_staff_roles/1.json
  def show
  end

  # GET /_paroles_staff_roles/new
  def new
    @_paroles_staff_role = ParolesStaffRole.new
  end

  # GET /_paroles_staff_roles/1/edit
  def edit
  end

  # POST /_paroles_staff_roles or /_paroles_staff_roles.json
  def create
    @_paroles_staff_role = ParolesStaffRole.new(_paroles_staff_role_params)

    respond_to do |format|
      if @_paroles_staff_role.save
        format.html { redirect_to _paroles_staff_role_url(@_paroles_staff_role), notice: "Paroles staff role was successfully created." }
        format.json { render :show, status: :created, location: @_paroles_staff_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_paroles_staff_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_paroles_staff_roles/1 or /_paroles_staff_roles/1.json
  def update
    respond_to do |format|
      if @_paroles_staff_role.update(_paroles_staff_role_params)
        format.html { redirect_to _paroles_staff_role_url(@_paroles_staff_role), notice: "Paroles staff role was successfully updated." }
        format.json { render :show, status: :ok, location: @_paroles_staff_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_paroles_staff_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_paroles_staff_roles/1 or /_paroles_staff_roles/1.json
  def destroy
    @_paroles_staff_role.destroy!

    respond_to do |format|
      format.html { redirect_to _paroles_staff_roles_url, notice: "Paroles staff role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__paroles_staff_role
      @_paroles_staff_role = ParolesStaffRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _paroles_staff_role_params
      params.require(:_paroles_staff_role).permit(:name)
    end
end
