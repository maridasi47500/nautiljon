class ArtbooksSocieteRolesController < ApplicationController
  before_action :set_artbooks_societe_role, only: %i[ show edit update destroy ]

  # GET /artbooks_societe_roles or /artbooks_societe_roles.json
  def index
    @artbooks_societe_roles = ArtbooksSocieteRole.all
  end

  # GET /artbooks_societe_roles/1 or /artbooks_societe_roles/1.json
  def show
  end

  # GET /artbooks_societe_roles/new
  def new
    @artbooks_societe_role = ArtbooksSocieteRole.new
  end

  # GET /artbooks_societe_roles/1/edit
  def edit
  end

  # POST /artbooks_societe_roles or /artbooks_societe_roles.json
  def create
    @artbooks_societe_role = ArtbooksSocieteRole.new(artbooks_societe_role_params)

    respond_to do |format|
      if @artbooks_societe_role.save
        format.html { redirect_to artbooks_societe_role_url(@artbooks_societe_role), notice: "Artbooks societe role was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_societe_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_societe_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_societe_roles/1 or /artbooks_societe_roles/1.json
  def update
    respond_to do |format|
      if @artbooks_societe_role.update(artbooks_societe_role_params)
        format.html { redirect_to artbooks_societe_role_url(@artbooks_societe_role), notice: "Artbooks societe role was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_societe_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_societe_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_societe_roles/1 or /artbooks_societe_roles/1.json
  def destroy
    @artbooks_societe_role.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_societe_roles_url, notice: "Artbooks societe role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_societe_role
      @artbooks_societe_role = ArtbooksSocieteRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_societe_role_params
      params.require(:artbooks_societe_role).permit(:name)
    end
end
