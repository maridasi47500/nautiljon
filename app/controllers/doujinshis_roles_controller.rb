class DoujinshisRolesController < ApplicationController
  before_action :set__doujinshis_role, only: %i[ show edit update destroy ]

  # GET /_doujinshis_roles or /_doujinshis_roles.json
  def index
    @_doujinshis_roles = DoujinshisRole.all
  end

  # GET /_doujinshis_roles/1 or /_doujinshis_roles/1.json
  def show
  end

  # GET /_doujinshis_roles/new
  def new
    @_doujinshis_role = DoujinshisRole.new
  end

  # GET /_doujinshis_roles/1/edit
  def edit
  end

  # POST /_doujinshis_roles or /_doujinshis_roles.json
  def create
    @_doujinshis_role = DoujinshisRole.new(_doujinshis_role_params)

    respond_to do |format|
      if @_doujinshis_role.save
        format.html { redirect_to doujinshis_role_url(@_doujinshis_role), notice: "Doujinshis role was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_roles/1 or /_doujinshis_roles/1.json
  def update
    respond_to do |format|
      if @_doujinshis_role.update(_doujinshis_role_params)
        format.html { redirect_to doujinshis_role_url(@_doujinshis_role), notice: "Doujinshis role was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_roles/1 or /_doujinshis_roles/1.json
  def destroy
    @_doujinshis_role.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_roles_url, notice: "Doujinshis role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_role
      @_doujinshis_role = DoujinshisRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_role_params
      params.require(:doujinshis_role).permit(:name)
    end
end
