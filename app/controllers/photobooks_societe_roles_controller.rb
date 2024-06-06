class PhotobooksSocieteRolesController < ApplicationController
  before_action :set__photobooks_societe_role, only: %i[ show edit update destroy ]

  # GET /_photobooks_societe_roles or /_photobooks_societe_roles.json
  def index
    @_photobooks_societe_roles = PhotobooksSocieteRole.all
  end

  # GET /_photobooks_societe_roles/1 or /_photobooks_societe_roles/1.json
  def show
  end

  # GET /_photobooks_societe_roles/new
  def new
    @_photobooks_societe_role = PhotobooksSocieteRole.new
  end

  # GET /_photobooks_societe_roles/1/edit
  def edit
  end

  # POST /_photobooks_societe_roles or /_photobooks_societe_roles.json
  def create
    @_photobooks_societe_role = PhotobooksSocieteRole.new(_photobooks_societe_role_params)

    respond_to do |format|
      if @_photobooks_societe_role.save
        format.html { redirect_to _photobooks_societe_role_url(@_photobooks_societe_role), notice: "Photobooks societe role was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_societe_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_societe_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_societe_roles/1 or /_photobooks_societe_roles/1.json
  def update
    respond_to do |format|
      if @_photobooks_societe_role.update(_photobooks_societe_role_params)
        format.html { redirect_to _photobooks_societe_role_url(@_photobooks_societe_role), notice: "Photobooks societe role was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_societe_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_societe_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_societe_roles/1 or /_photobooks_societe_roles/1.json
  def destroy
    @_photobooks_societe_role.destroy!

    respond_to do |format|
      format.html { redirect_to _photobooks_societe_roles_url, notice: "Photobooks societe role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_societe_role
      @_photobooks_societe_role = PhotobooksSocieteRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_societe_role_params
      params.require(:_photobooks_societe_role).permit(:name)
    end
end
