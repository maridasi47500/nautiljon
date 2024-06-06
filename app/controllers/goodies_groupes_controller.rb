class GoodiesGroupesController < ApplicationController
  before_action :set__goodies_groupe, only: %i[ show edit update destroy ]

  # GET /_goodies_groupes or /_goodies_groupes.json
  def index
    @_goodies_groupes = GoodiesGroupe.all
  end

  # GET /_goodies_groupes/1 or /_goodies_groupes/1.json
  def show
  end

  # GET /_goodies_groupes/new
  def new
    @_goodies_groupe = GoodiesGroupe.new
  end

  # GET /_goodies_groupes/1/edit
  def edit
  end

  # POST /_goodies_groupes or /_goodies_groupes.json
  def create
    @_goodies_groupe = GoodiesGroupe.new(_goodies_groupe_params)

    respond_to do |format|
      if @_goodies_groupe.save
        format.html { redirect_to goodies_groupe_url(@_goodies_groupe), notice: "Goodies groupe was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_groupe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_groupes/1 or /_goodies_groupes/1.json
  def update
    respond_to do |format|
      if @_goodies_groupe.update(_goodies_groupe_params)
        format.html { redirect_to goodies_groupe_url(@_goodies_groupe), notice: "Goodies groupe was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_groupe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_groupes/1 or /_goodies_groupes/1.json
  def destroy
    @_goodies_groupe.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_groupes_url, notice: "Goodies groupe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_groupe
      @_goodies_groupe = GoodiesGroupe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_groupe_params
      params.require(:goodies_groupe).permit(:name)
    end
end
