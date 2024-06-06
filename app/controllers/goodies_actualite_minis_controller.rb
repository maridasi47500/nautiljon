class GoodiesActualiteMinisController < ApplicationController
  before_action :set__goodies_actualite_mini, only: %i[ show edit update destroy ]

  # GET /_goodies_actualite_minis or /_goodies_actualite_minis.json
  def index
    @_goodies_actualite_minis = GoodiesActualiteMini.all
  end

  # GET /_goodies_actualite_minis/1 or /_goodies_actualite_minis/1.json
  def show
  end

  # GET /_goodies_actualite_minis/new
  def new
    @_goodies_actualite_mini = GoodiesActualiteMini.new
  end

  # GET /_goodies_actualite_minis/1/edit
  def edit
  end

  # POST /_goodies_actualite_minis or /_goodies_actualite_minis.json
  def create
    @_goodies_actualite_mini = GoodiesActualiteMini.new(_goodies_actualite_mini_params)

    respond_to do |format|
      if @_goodies_actualite_mini.save
        format.html { redirect_to goodies_actualite_mini_url(@_goodies_actualite_mini), notice: "Goodies actualite mini was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_actualite_mini }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_actualite_minis/1 or /_goodies_actualite_minis/1.json
  def update
    respond_to do |format|
      if @_goodies_actualite_mini.update(_goodies_actualite_mini_params)
        format.html { redirect_to goodies_actualite_mini_url(@_goodies_actualite_mini), notice: "Goodies actualite mini was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_actualite_mini }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_actualite_minis/1 or /_goodies_actualite_minis/1.json
  def destroy
    @_goodies_actualite_mini.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_actualite_minis_url, notice: "Goodies actualite mini was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_actualite_mini
      @_goodies_actualite_mini = GoodiesActualiteMini.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_actualite_mini_params
      params.require(:goodies_actualite_mini).permit(:name)
    end
end
