class AnimesEditeursVfRolesController < ApplicationController
  before_action :set_animes_editeurs_vf_role, only: %i[ show edit update destroy ]

  # GET /animes_editeurs_vf_roles or /animes_editeurs_vf_roles.json
  def index
    @animes_editeurs_vf_roles = AnimesEditeursVfRole.all
  end

  # GET /animes_editeurs_vf_roles/1 or /animes_editeurs_vf_roles/1.json
  def show
  end

  # GET /animes_editeurs_vf_roles/new
  def new
    @animes_editeurs_vf_role = AnimesEditeursVfRole.new
  end

  # GET /animes_editeurs_vf_roles/1/edit
  def edit
  end

  # POST /animes_editeurs_vf_roles or /animes_editeurs_vf_roles.json
  def create
    @animes_editeurs_vf_role = AnimesEditeursVfRole.new(animes_editeurs_vf_role_params)

    respond_to do |format|
      if @animes_editeurs_vf_role.save
        format.html { redirect_to animes_editeurs_vf_role_url(@animes_editeurs_vf_role), notice: "Animes editeurs vf role was successfully created." }
        format.json { render :show, status: :created, location: @animes_editeurs_vf_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_editeurs_vf_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_editeurs_vf_roles/1 or /animes_editeurs_vf_roles/1.json
  def update
    respond_to do |format|
      if @animes_editeurs_vf_role.update(animes_editeurs_vf_role_params)
        format.html { redirect_to animes_editeurs_vf_role_url(@animes_editeurs_vf_role), notice: "Animes editeurs vf role was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_editeurs_vf_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_editeurs_vf_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_editeurs_vf_roles/1 or /animes_editeurs_vf_roles/1.json
  def destroy
    @animes_editeurs_vf_role.destroy!

    respond_to do |format|
      format.html { redirect_to animes_editeurs_vf_roles_url, notice: "Animes editeurs vf role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_editeurs_vf_role
      @animes_editeurs_vf_role = AnimesEditeursVfRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_editeurs_vf_role_params
      params.require(:animes_editeurs_vf_role).permit(:name)
    end
end
