class DoujinsRolesController < ApplicationController
  before_action :set__doujins_role, only: %i[ show edit update destroy ]

  # GET /_doujins_roles or /_doujins_roles.json
  def index
    @_doujins_roles = DoujinsRole.all
  end

  # GET /_doujins_roles/1 or /_doujins_roles/1.json
  def show
  end

  # GET /_doujins_roles/new
  def new
    @_doujins_role = DoujinsRole.new
  end

  # GET /_doujins_roles/1/edit
  def edit
  end

  # POST /_doujins_roles or /_doujins_roles.json
  def create
    @_doujins_role = DoujinsRole.new(_doujins_role_params)

    respond_to do |format|
      if @_doujins_role.save
        format.html { redirect_to doujins_role_url(@_doujins_role), notice: "Doujins role was successfully created." }
        format.json { render :show, status: :created, location: @_doujins_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujins_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujins_roles/1 or /_doujins_roles/1.json
  def update
    respond_to do |format|
      if @_doujins_role.update(_doujins_role_params)
        format.html { redirect_to doujins_role_url(@_doujins_role), notice: "Doujins role was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujins_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujins_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujins_roles/1 or /_doujins_roles/1.json
  def destroy
    @_doujins_role.destroy!

    respond_to do |format|
      format.html { redirect_to doujins_roles_url, notice: "Doujins role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujins_role
      @_doujins_role = DoujinsRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujins_role_params
      params.require(:doujins_role).permit(:name)
    end
end
