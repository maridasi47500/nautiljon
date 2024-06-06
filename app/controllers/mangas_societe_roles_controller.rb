class MangasSocieteRolesController < ApplicationController
  before_action :set__mangas_societe_role, only: %i[ show edit update destroy ]

  # GET /_mangas_societe_roles or /_mangas_societe_roles.json
  def index
    @_mangas_societe_roles = MangasSocieteRole.all
  end

  # GET /_mangas_societe_roles/1 or /_mangas_societe_roles/1.json
  def show
  end

  # GET /_mangas_societe_roles/new
  def new
    @_mangas_societe_role = MangasSocieteRole.new
  end

  # GET /_mangas_societe_roles/1/edit
  def edit
  end

  # POST /_mangas_societe_roles or /_mangas_societe_roles.json
  def create
    @_mangas_societe_role = MangasSocieteRole.new(_mangas_societe_role_params)

    respond_to do |format|
      if @_mangas_societe_role.save
        format.html { redirect_to mangas_societe_role_url(@_mangas_societe_role), notice: "Mangas societe role was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_societe_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_societe_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_societe_roles/1 or /_mangas_societe_roles/1.json
  def update
    respond_to do |format|
      if @_mangas_societe_role.update(_mangas_societe_role_params)
        format.html { redirect_to mangas_societe_role_url(@_mangas_societe_role), notice: "Mangas societe role was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_societe_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_societe_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_societe_roles/1 or /_mangas_societe_roles/1.json
  def destroy
    @_mangas_societe_role.destroy!

    respond_to do |format|
      format.html { redirect_to mangas_societe_roles_url, notice: "Mangas societe role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_societe_role
      @_mangas_societe_role = MangasSocieteRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_societe_role_params
      params.require(:mangas_societe_role).permit(:name)
    end
end
