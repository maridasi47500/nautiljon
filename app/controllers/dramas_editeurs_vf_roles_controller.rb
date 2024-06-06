class DramasEditeursVfRolesController < ApplicationController
  before_action :set__dramas_editeurs_vf_role, only: %i[ show edit update destroy ]

  # GET /_dramas_editeurs_vf_roles or /_dramas_editeurs_vf_roles.json
  def index
    @_dramas_editeurs_vf_roles = DramasEditeursVfRole.all
  end

  # GET /_dramas_editeurs_vf_roles/1 or /_dramas_editeurs_vf_roles/1.json
  def show
  end

  # GET /_dramas_editeurs_vf_roles/new
  def new
    @_dramas_editeurs_vf_role = DramasEditeursVfRole.new
  end

  # GET /_dramas_editeurs_vf_roles/1/edit
  def edit
  end

  # POST /_dramas_editeurs_vf_roles or /_dramas_editeurs_vf_roles.json
  def create
    @_dramas_editeurs_vf_role = DramasEditeursVfRole.new(_dramas_editeurs_vf_role_params)

    respond_to do |format|
      if @_dramas_editeurs_vf_role.save
        format.html { redirect_to _dramas_editeurs_vf_role_url(@_dramas_editeurs_vf_role), notice: "Dramas editeurs vf role was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_editeurs_vf_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_editeurs_vf_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_editeurs_vf_roles/1 or /_dramas_editeurs_vf_roles/1.json
  def update
    respond_to do |format|
      if @_dramas_editeurs_vf_role.update(_dramas_editeurs_vf_role_params)
        format.html { redirect_to _dramas_editeurs_vf_role_url(@_dramas_editeurs_vf_role), notice: "Dramas editeurs vf role was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_editeurs_vf_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_editeurs_vf_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_editeurs_vf_roles/1 or /_dramas_editeurs_vf_roles/1.json
  def destroy
    @_dramas_editeurs_vf_role.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_editeurs_vf_roles_url, notice: "Dramas editeurs vf role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_editeurs_vf_role
      @_dramas_editeurs_vf_role = DramasEditeursVfRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_editeurs_vf_role_params
      params.require(:_dramas_editeurs_vf_role).permit(:name)
    end
end
