class CdsRolesController < ApplicationController
  before_action :set__cds_role, only: %i[ show edit update destroy ]

  # GET /_cds_roles or /_cds_roles.json
  def index
    @_cds_roles = CdsRole.all
  end

  # GET /_cds_roles/1 or /_cds_roles/1.json
  def show
  end

  # GET /_cds_roles/new
  def new
    @_cds_role = CdsRole.new
  end

  # GET /_cds_roles/1/edit
  def edit
  end

  # POST /_cds_roles or /_cds_roles.json
  def create
    @_cds_role = CdsRole.new(_cds_role_params)

    respond_to do |format|
      if @_cds_role.save
        format.html { redirect_to cds_role_url(@_cds_role), notice: "Cds role was successfully created." }
        format.json { render :show, status: :created, location: @_cds_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_cds_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_cds_roles/1 or /_cds_roles/1.json
  def update
    respond_to do |format|
      if @_cds_role.update(_cds_role_params)
        format.html { redirect_to cds_role_url(@_cds_role), notice: "Cds role was successfully updated." }
        format.json { render :show, status: :ok, location: @_cds_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_cds_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_cds_roles/1 or /_cds_roles/1.json
  def destroy
    @_cds_role.destroy!

    respond_to do |format|
      format.html { redirect_to cds_roles_url, notice: "Cds role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__cds_role
      @_cds_role = CdsRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _cds_role_params
      params.require(:cds_role).permit(:name)
    end
end
