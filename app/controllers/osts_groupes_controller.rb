class OstsGroupesController < ApplicationController
  before_action :set_osts_groupe, only: %i[ show edit update destroy ]

  # GET /osts_groupes or /osts_groupes.json
  def index
    @osts_groupes = OstsGroupe.all
  end

  # GET /osts_groupes/1 or /osts_groupes/1.json
  def show
  end

  # GET /osts_groupes/new
  def new
    @osts_groupe = OstsGroupe.new
  end

  # GET /osts_groupes/1/edit
  def edit
  end

  # POST /osts_groupes or /osts_groupes.json
  def create
    @osts_groupe = OstsGroupe.new(osts_groupe_params)

    respond_to do |format|
      if @osts_groupe.save
        format.html { redirect_to osts_groupe_url(@osts_groupe), notice: "Osts groupe was successfully created." }
        format.json { render :show, status: :created, location: @osts_groupe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @osts_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /osts_groupes/1 or /osts_groupes/1.json
  def update
    respond_to do |format|
      if @osts_groupe.update(osts_groupe_params)
        format.html { redirect_to osts_groupe_url(@osts_groupe), notice: "Osts groupe was successfully updated." }
        format.json { render :show, status: :ok, location: @osts_groupe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @osts_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /osts_groupes/1 or /osts_groupes/1.json
  def destroy
    @osts_groupe.destroy!

    respond_to do |format|
      format.html { redirect_to osts_groupes_url, notice: "Osts groupe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_osts_groupe
      @osts_groupe = OstsGroupe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def osts_groupe_params
      params.require(:osts_groupe).permit(:name)
    end
end
