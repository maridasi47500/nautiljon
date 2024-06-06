class FilmsAsiatiquesEnSallesStaffRolesController < ApplicationController
  before_action :set__films_asiatiques_en_salles_staff_role, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_en_salles_staff_roles or /_films_asiatiques_en_salles_staff_roles.json
  def index
    @_films_asiatiques_en_salles_staff_roles = FilmsAsiatiquesEnSallesStaffRole.all
  end

  # GET /_films_asiatiques_en_salles_staff_roles/1 or /_films_asiatiques_en_salles_staff_roles/1.json
  def show
  end

  # GET /_films_asiatiques_en_salles_staff_roles/new
  def new
    @_films_asiatiques_en_salles_staff_role = FilmsAsiatiquesEnSallesStaffRole.new
  end

  # GET /_films_asiatiques_en_salles_staff_roles/1/edit
  def edit
  end

  # POST /_films_asiatiques_en_salles_staff_roles or /_films_asiatiques_en_salles_staff_roles.json
  def create
    @_films_asiatiques_en_salles_staff_role = FilmsAsiatiquesEnSallesStaffRole.new(_films_asiatiques_en_salles_staff_role_params)

    respond_to do |format|
      if @_films_asiatiques_en_salles_staff_role.save
        format.html { redirect_to films_asiatiques_en_salles_staff_role_url(@_films_asiatiques_en_salles_staff_role), notice: "Films asiatiques en salles staff role was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_en_salles_staff_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_en_salles_staff_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_en_salles_staff_roles/1 or /_films_asiatiques_en_salles_staff_roles/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_en_salles_staff_role.update(_films_asiatiques_en_salles_staff_role_params)
        format.html { redirect_to films_asiatiques_en_salles_staff_role_url(@_films_asiatiques_en_salles_staff_role), notice: "Films asiatiques en salles staff role was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_en_salles_staff_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_en_salles_staff_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_en_salles_staff_roles/1 or /_films_asiatiques_en_salles_staff_roles/1.json
  def destroy
    @_films_asiatiques_en_salles_staff_role.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_en_salles_staff_roles_url, notice: "Films asiatiques en salles staff role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_en_salles_staff_role
      @_films_asiatiques_en_salles_staff_role = FilmsAsiatiquesEnSallesStaffRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_en_salles_staff_role_params
      params.require(:films_asiatiques_en_salles_staff_role).permit(:name)
    end
end
