class PhotobooksRolesController < ApplicationController
  before_action :set__photobooks_role, only: %i[ show edit update destroy ]

  # GET /_photobooks_roles or /_photobooks_roles.json
  def index
    @_photobooks_roles = PhotobooksRole.all
  end

  # GET /_photobooks_roles/1 or /_photobooks_roles/1.json
  def show
  end

  # GET /_photobooks_roles/new
  def new
    @_photobooks_role = PhotobooksRole.new
  end

  # GET /_photobooks_roles/1/edit
  def edit
  end

  # POST /_photobooks_roles or /_photobooks_roles.json
  def create
    @_photobooks_role = PhotobooksRole.new(_photobooks_role_params)

    respond_to do |format|
      if @_photobooks_role.save
        format.html { redirect_to photobooks_role_url(@_photobooks_role), notice: "Photobooks role was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_roles/1 or /_photobooks_roles/1.json
  def update
    respond_to do |format|
      if @_photobooks_role.update(_photobooks_role_params)
        format.html { redirect_to photobooks_role_url(@_photobooks_role), notice: "Photobooks role was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_roles/1 or /_photobooks_roles/1.json
  def destroy
    @_photobooks_role.destroy!

    respond_to do |format|
      format.html { redirect_to photobooks_roles_url, notice: "Photobooks role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_role
      @_photobooks_role = PhotobooksRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_role_params
      params.require(:photobooks_role).permit(:name)
    end
end
