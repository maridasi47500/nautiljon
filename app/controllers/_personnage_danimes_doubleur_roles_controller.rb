class PersonnageDanimesDoubleurRolesController < ApplicationController
  before_action :set__personnage_danimes_doubleur_role, only: %i[ show edit update destroy ]

  # GET /_personnage_danimes_doubleur_roles or /_personnage_danimes_doubleur_roles.json
  def index
    @_personnage_danimes_doubleur_roles = PersonnageDanimesDoubleurRole.all
  end

  # GET /_personnage_danimes_doubleur_roles/1 or /_personnage_danimes_doubleur_roles/1.json
  def show
  end

  # GET /_personnage_danimes_doubleur_roles/new
  def new
    @_personnage_danimes_doubleur_role = PersonnageDanimesDoubleurRole.new
  end

  # GET /_personnage_danimes_doubleur_roles/1/edit
  def edit
  end

  # POST /_personnage_danimes_doubleur_roles or /_personnage_danimes_doubleur_roles.json
  def create
    @_personnage_danimes_doubleur_role = PersonnageDanimesDoubleurRole.new(_personnage_danimes_doubleur_role_params)

    respond_to do |format|
      if @_personnage_danimes_doubleur_role.save
        format.html { redirect_to _personnage_danimes_doubleur_role_url(@_personnage_danimes_doubleur_role), notice: "Personnage danimes doubleur role was successfully created." }
        format.json { render :show, status: :created, location: @_personnage_danimes_doubleur_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnage_danimes_doubleur_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnage_danimes_doubleur_roles/1 or /_personnage_danimes_doubleur_roles/1.json
  def update
    respond_to do |format|
      if @_personnage_danimes_doubleur_role.update(_personnage_danimes_doubleur_role_params)
        format.html { redirect_to _personnage_danimes_doubleur_role_url(@_personnage_danimes_doubleur_role), notice: "Personnage danimes doubleur role was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnage_danimes_doubleur_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnage_danimes_doubleur_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnage_danimes_doubleur_roles/1 or /_personnage_danimes_doubleur_roles/1.json
  def destroy
    @_personnage_danimes_doubleur_role.destroy!

    respond_to do |format|
      format.html { redirect_to _personnage_danimes_doubleur_roles_url, notice: "Personnage danimes doubleur role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnage_danimes_doubleur_role
      @_personnage_danimes_doubleur_role = PersonnageDanimesDoubleurRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnage_danimes_doubleur_role_params
      params.require(:_personnage_danimes_doubleur_role).permit(:name)
    end
end
