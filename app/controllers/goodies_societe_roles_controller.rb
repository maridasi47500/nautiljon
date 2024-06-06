class GoodiesSocieteRolesController < ApplicationController
  before_action :set__goodies_societe_role, only: %i[ show edit update destroy ]

  # GET /_goodies_societe_roles or /_goodies_societe_roles.json
  def index
    @_goodies_societe_roles = GoodiesSocieteRole.all
  end

  # GET /_goodies_societe_roles/1 or /_goodies_societe_roles/1.json
  def show
  end

  # GET /_goodies_societe_roles/new
  def new
    @_goodies_societe_role = GoodiesSocieteRole.new
  end

  # GET /_goodies_societe_roles/1/edit
  def edit
  end

  # POST /_goodies_societe_roles or /_goodies_societe_roles.json
  def create
    @_goodies_societe_role = GoodiesSocieteRole.new(_goodies_societe_role_params)

    respond_to do |format|
      if @_goodies_societe_role.save
        format.html { redirect_to goodies_societe_role_url(@_goodies_societe_role), notice: "Goodies societe role was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_societe_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_societe_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_societe_roles/1 or /_goodies_societe_roles/1.json
  def update
    respond_to do |format|
      if @_goodies_societe_role.update(_goodies_societe_role_params)
        format.html { redirect_to goodies_societe_role_url(@_goodies_societe_role), notice: "Goodies societe role was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_societe_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_societe_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_societe_roles/1 or /_goodies_societe_roles/1.json
  def destroy
    @_goodies_societe_role.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_societe_roles_url, notice: "Goodies societe role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_societe_role
      @_goodies_societe_role = GoodiesSocieteRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_societe_role_params
      params.require(:goodies_societe_role).permit(:name)
    end
end
