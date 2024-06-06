class PersonnalitesRolesController < ApplicationController
  before_action :set__personnalites_role, only: %i[ show edit update destroy ]

  # GET /_personnalites_roles or /_personnalites_roles.json
  def index
    @_personnalites_roles = PersonnalitesRole.all
  end

  # GET /_personnalites_roles/1 or /_personnalites_roles/1.json
  def show
  end

  # GET /_personnalites_roles/new
  def new
    @_personnalites_role = PersonnalitesRole.new
  end

  # GET /_personnalites_roles/1/edit
  def edit
  end

  # POST /_personnalites_roles or /_personnalites_roles.json
  def create
    @_personnalites_role = PersonnalitesRole.new(_personnalites_role_params)

    respond_to do |format|
      if @_personnalites_role.save
        format.html { redirect_to _personnalites_role_url(@_personnalites_role), notice: "Personnalites role was successfully created." }
        format.json { render :show, status: :created, location: @_personnalites_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnalites_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnalites_roles/1 or /_personnalites_roles/1.json
  def update
    respond_to do |format|
      if @_personnalites_role.update(_personnalites_role_params)
        format.html { redirect_to _personnalites_role_url(@_personnalites_role), notice: "Personnalites role was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnalites_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnalites_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnalites_roles/1 or /_personnalites_roles/1.json
  def destroy
    @_personnalites_role.destroy!

    respond_to do |format|
      format.html { redirect_to _personnalites_roles_url, notice: "Personnalites role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnalites_role
      @_personnalites_role = PersonnalitesRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnalites_role_params
      params.require(:_personnalites_role).permit(:name)
    end
end
