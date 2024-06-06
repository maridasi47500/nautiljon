class AnimesSocieteRolesController < ApplicationController
  before_action :set_animes_societe_role, only: %i[ show edit update destroy ]

  # GET /animes_societe_roles or /animes_societe_roles.json
  def index
    @animes_societe_roles = AnimesSocieteRole.all
  end

  # GET /animes_societe_roles/1 or /animes_societe_roles/1.json
  def show
  end

  # GET /animes_societe_roles/new
  def new
    @animes_societe_role = AnimesSocieteRole.new
  end

  # GET /animes_societe_roles/1/edit
  def edit
  end

  # POST /animes_societe_roles or /animes_societe_roles.json
  def create
    @animes_societe_role = AnimesSocieteRole.new(animes_societe_role_params)

    respond_to do |format|
      if @animes_societe_role.save
        format.html { redirect_to animes_societe_role_url(@animes_societe_role), notice: "Animes societe role was successfully created." }
        format.json { render :show, status: :created, location: @animes_societe_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_societe_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_societe_roles/1 or /animes_societe_roles/1.json
  def update
    respond_to do |format|
      if @animes_societe_role.update(animes_societe_role_params)
        format.html { redirect_to animes_societe_role_url(@animes_societe_role), notice: "Animes societe role was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_societe_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_societe_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_societe_roles/1 or /animes_societe_roles/1.json
  def destroy
    @animes_societe_role.destroy!

    respond_to do |format|
      format.html { redirect_to animes_societe_roles_url, notice: "Animes societe role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_societe_role
      @animes_societe_role = AnimesSocieteRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_societe_role_params
      params.require(:animes_societe_role).permit(:name)
    end
end
