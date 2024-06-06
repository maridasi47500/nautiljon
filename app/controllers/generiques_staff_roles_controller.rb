class GeneriquesStaffRolesController < ApplicationController
  before_action :set__generiques_staff_role, only: %i[ show edit update destroy ]

  # GET /_generiques_staff_roles or /_generiques_staff_roles.json
  def index
    @_generiques_staff_roles = GeneriquesStaffRole.all
  end

  # GET /_generiques_staff_roles/1 or /_generiques_staff_roles/1.json
  def show
  end

  # GET /_generiques_staff_roles/new
  def new
    @_generiques_staff_role = GeneriquesStaffRole.new
  end

  # GET /_generiques_staff_roles/1/edit
  def edit
  end

  # POST /_generiques_staff_roles or /_generiques_staff_roles.json
  def create
    @_generiques_staff_role = GeneriquesStaffRole.new(_generiques_staff_role_params)

    respond_to do |format|
      if @_generiques_staff_role.save
        format.html { redirect_to generiques_staff_role_url(@_generiques_staff_role), notice: "Generiques staff role was successfully created." }
        format.json { render :show, status: :created, location: @_generiques_staff_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_generiques_staff_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_generiques_staff_roles/1 or /_generiques_staff_roles/1.json
  def update
    respond_to do |format|
      if @_generiques_staff_role.update(_generiques_staff_role_params)
        format.html { redirect_to generiques_staff_role_url(@_generiques_staff_role), notice: "Generiques staff role was successfully updated." }
        format.json { render :show, status: :ok, location: @_generiques_staff_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_generiques_staff_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_generiques_staff_roles/1 or /_generiques_staff_roles/1.json
  def destroy
    @_generiques_staff_role.destroy!

    respond_to do |format|
      format.html { redirect_to generiques_staff_roles_url, notice: "Generiques staff role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__generiques_staff_role
      @_generiques_staff_role = GeneriquesStaffRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _generiques_staff_role_params
      params.require(:generiques_staff_role).permit(:name)
    end
end
