class OstsRolesController < ApplicationController
  before_action :set_osts_role, only: %i[ show edit update destroy ]

  # GET /osts_roles or /osts_roles.json
  def index
    @osts_roles = OstsRole.all
  end

  # GET /osts_roles/1 or /osts_roles/1.json
  def show
  end

  # GET /osts_roles/new
  def new
    @osts_role = OstsRole.new
  end

  # GET /osts_roles/1/edit
  def edit
  end

  # POST /osts_roles or /osts_roles.json
  def create
    @osts_role = OstsRole.new(osts_role_params)

    respond_to do |format|
      if @osts_role.save
        format.html { redirect_to osts_role_url(@osts_role), notice: "Osts role was successfully created." }
        format.json { render :show, status: :created, location: @osts_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @osts_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /osts_roles/1 or /osts_roles/1.json
  def update
    respond_to do |format|
      if @osts_role.update(osts_role_params)
        format.html { redirect_to osts_role_url(@osts_role), notice: "Osts role was successfully updated." }
        format.json { render :show, status: :ok, location: @osts_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @osts_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /osts_roles/1 or /osts_roles/1.json
  def destroy
    @osts_role.destroy!

    respond_to do |format|
      format.html { redirect_to osts_roles_url, notice: "Osts role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_osts_role
      @osts_role = OstsRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def osts_role_params
      params.require(:osts_role).permit(:name)
    end
end
