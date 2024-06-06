class LivresStaffRolesController < ApplicationController
  before_action :set__livres_staff_role, only: %i[ show edit update destroy ]

  # GET /_livres_staff_roles or /_livres_staff_roles.json
  def index
    @_livres_staff_roles = LivresStaffRole.all
  end

  # GET /_livres_staff_roles/1 or /_livres_staff_roles/1.json
  def show
  end

  # GET /_livres_staff_roles/new
  def new
    @_livres_staff_role = LivresStaffRole.new
  end

  # GET /_livres_staff_roles/1/edit
  def edit
  end

  # POST /_livres_staff_roles or /_livres_staff_roles.json
  def create
    @_livres_staff_role = LivresStaffRole.new(_livres_staff_role_params)

    respond_to do |format|
      if @_livres_staff_role.save
        format.html { redirect_to livres_staff_role_url(@_livres_staff_role), notice: "Livres staff role was successfully created." }
        format.json { render :show, status: :created, location: @_livres_staff_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_staff_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_staff_roles/1 or /_livres_staff_roles/1.json
  def update
    respond_to do |format|
      if @_livres_staff_role.update(_livres_staff_role_params)
        format.html { redirect_to livres_staff_role_url(@_livres_staff_role), notice: "Livres staff role was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_staff_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_staff_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_staff_roles/1 or /_livres_staff_roles/1.json
  def destroy
    @_livres_staff_role.destroy!

    respond_to do |format|
      format.html { redirect_to livres_staff_roles_url, notice: "Livres staff role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_staff_role
      @_livres_staff_role = LivresStaffRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_staff_role_params
      params.require(:livres_staff_role).permit(:name)
    end
end
