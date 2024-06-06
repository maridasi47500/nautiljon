class Clips::Lives::Bonus::ConcertsRolesController < ApplicationController
  before_action :set__clips___lives___bonus___concerts_role, only: %i[ show edit update destroy ]

  # GET /_clips_/_lives_/_bonus_/_concerts_roles or /_clips_/_lives_/_bonus_/_concerts_roles.json
  def index
    @_clips___lives___bonus___concerts_roles = Clips::Lives::Bonus::ConcertsRole.all
  end

  # GET /_clips_/_lives_/_bonus_/_concerts_roles/1 or /_clips_/_lives_/_bonus_/_concerts_roles/1.json
  def show
  end

  # GET /_clips_/_lives_/_bonus_/_concerts_roles/new
  def new
    @_clips___lives___bonus___concerts_role = Clips::Lives::Bonus::ConcertsRole.new
  end

  # GET /_clips_/_lives_/_bonus_/_concerts_roles/1/edit
  def edit
  end

  # POST /_clips_/_lives_/_bonus_/_concerts_roles or /_clips_/_lives_/_bonus_/_concerts_roles.json
  def create
    @_clips___lives___bonus___concerts_role = Clips::Lives::Bonus::ConcertsRole.new(_clips___lives___bonus___concerts_role_params)

    respond_to do |format|
      if @_clips___lives___bonus___concerts_role.save
        format.html { redirect_to _clips___lives___bonus___concerts_role_url(@_clips___lives___bonus___concerts_role), notice: "Concerts role was successfully created." }
        format.json { render :show, status: :created, location: @_clips___lives___bonus___concerts_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_clips___lives___bonus___concerts_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_clips_/_lives_/_bonus_/_concerts_roles/1 or /_clips_/_lives_/_bonus_/_concerts_roles/1.json
  def update
    respond_to do |format|
      if @_clips___lives___bonus___concerts_role.update(_clips___lives___bonus___concerts_role_params)
        format.html { redirect_to _clips___lives___bonus___concerts_role_url(@_clips___lives___bonus___concerts_role), notice: "Concerts role was successfully updated." }
        format.json { render :show, status: :ok, location: @_clips___lives___bonus___concerts_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_clips___lives___bonus___concerts_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_clips_/_lives_/_bonus_/_concerts_roles/1 or /_clips_/_lives_/_bonus_/_concerts_roles/1.json
  def destroy
    @_clips___lives___bonus___concerts_role.destroy!

    respond_to do |format|
      format.html { redirect_to _clips___lives___bonus___concerts_roles_url, notice: "Concerts role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__clips___lives___bonus___concerts_role
      @_clips___lives___bonus___concerts_role = Clips::Lives::Bonus::ConcertsRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _clips___lives___bonus___concerts_role_params
      params.require(:_clips___lives___bonus___concerts_role).permit(:name)
    end
end
