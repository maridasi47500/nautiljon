class AmvsGroupesController < ApplicationController
  before_action :set_amvs_groupe, only: %i[ show edit update destroy ]

  # GET /amvs_groupes or /amvs_groupes.json
  def index
    @amvs_groupes = AmvsGroupe.all
  end

  # GET /amvs_groupes/1 or /amvs_groupes/1.json
  def show
  end

  # GET /amvs_groupes/new
  def new
    @amvs_groupe = AmvsGroupe.new
  end

  # GET /amvs_groupes/1/edit
  def edit
  end

  # POST /amvs_groupes or /amvs_groupes.json
  def create
    @amvs_groupe = AmvsGroupe.new(amvs_groupe_params)

    respond_to do |format|
      if @amvs_groupe.save
        format.html { redirect_to amvs_groupe_url(@amvs_groupe), notice: "Amvs groupe was successfully created." }
        format.json { render :show, status: :created, location: @amvs_groupe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @amvs_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amvs_groupes/1 or /amvs_groupes/1.json
  def update
    respond_to do |format|
      if @amvs_groupe.update(amvs_groupe_params)
        format.html { redirect_to amvs_groupe_url(@amvs_groupe), notice: "Amvs groupe was successfully updated." }
        format.json { render :show, status: :ok, location: @amvs_groupe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @amvs_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amvs_groupes/1 or /amvs_groupes/1.json
  def destroy
    @amvs_groupe.destroy!

    respond_to do |format|
      format.html { redirect_to amvs_groupes_url, notice: "Amvs groupe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amvs_groupe
      @amvs_groupe = AmvsGroupe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def amvs_groupe_params
      params.require(:amvs_groupe).permit(:name)
    end
end
