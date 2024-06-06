class DramasSocieteRolesController < ApplicationController
  before_action :set__dramas_societe_role, only: %i[ show edit update destroy ]

  # GET /_dramas_societe_roles or /_dramas_societe_roles.json
  def index
    @_dramas_societe_roles = DramasSocieteRole.all
  end

  # GET /_dramas_societe_roles/1 or /_dramas_societe_roles/1.json
  def show
  end

  # GET /_dramas_societe_roles/new
  def new
    @_dramas_societe_role = DramasSocieteRole.new
  end

  # GET /_dramas_societe_roles/1/edit
  def edit
  end

  # POST /_dramas_societe_roles or /_dramas_societe_roles.json
  def create
    @_dramas_societe_role = DramasSocieteRole.new(_dramas_societe_role_params)

    respond_to do |format|
      if @_dramas_societe_role.save
        format.html { redirect_to dramas_societe_role_url(@_dramas_societe_role), notice: "Dramas societe role was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_societe_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_societe_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_societe_roles/1 or /_dramas_societe_roles/1.json
  def update
    respond_to do |format|
      if @_dramas_societe_role.update(_dramas_societe_role_params)
        format.html { redirect_to dramas_societe_role_url(@_dramas_societe_role), notice: "Dramas societe role was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_societe_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_societe_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_societe_roles/1 or /_dramas_societe_roles/1.json
  def destroy
    @_dramas_societe_role.destroy!

    respond_to do |format|
      format.html { redirect_to dramas_societe_roles_url, notice: "Dramas societe role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_societe_role
      @_dramas_societe_role = DramasSocieteRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_societe_role_params
      params.require(:dramas_societe_role).permit(:name)
    end
end
