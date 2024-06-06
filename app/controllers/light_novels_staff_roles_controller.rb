class LightNovelsStaffRolesController < ApplicationController
  before_action :set__light_novels_staff_role, only: %i[ show edit update destroy ]

  # GET /_light_novels_staff_roles or /_light_novels_staff_roles.json
  def index
    @_light_novels_staff_roles = LightNovelsStaffRole.all
  end

  # GET /_light_novels_staff_roles/1 or /_light_novels_staff_roles/1.json
  def show
  end

  # GET /_light_novels_staff_roles/new
  def new
    @_light_novels_staff_role = LightNovelsStaffRole.new
  end

  # GET /_light_novels_staff_roles/1/edit
  def edit
  end

  # POST /_light_novels_staff_roles or /_light_novels_staff_roles.json
  def create
    @_light_novels_staff_role = LightNovelsStaffRole.new(_light_novels_staff_role_params)

    respond_to do |format|
      if @_light_novels_staff_role.save
        format.html { redirect_to _light_novels_staff_role_url(@_light_novels_staff_role), notice: "Light novels staff role was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_staff_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_staff_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_staff_roles/1 or /_light_novels_staff_roles/1.json
  def update
    respond_to do |format|
      if @_light_novels_staff_role.update(_light_novels_staff_role_params)
        format.html { redirect_to _light_novels_staff_role_url(@_light_novels_staff_role), notice: "Light novels staff role was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_staff_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_staff_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_staff_roles/1 or /_light_novels_staff_roles/1.json
  def destroy
    @_light_novels_staff_role.destroy!

    respond_to do |format|
      format.html { redirect_to _light_novels_staff_roles_url, notice: "Light novels staff role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_staff_role
      @_light_novels_staff_role = LightNovelsStaffRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_staff_role_params
      params.require(:_light_novels_staff_role).permit(:name)
    end
end
