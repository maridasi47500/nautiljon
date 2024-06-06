class DoujinshisActualiteMinisController < ApplicationController
  before_action :set__doujinshis_actualite_mini, only: %i[ show edit update destroy ]

  # GET /_doujinshis_actualite_minis or /_doujinshis_actualite_minis.json
  def index
    @_doujinshis_actualite_minis = DoujinshisActualiteMini.all
  end

  # GET /_doujinshis_actualite_minis/1 or /_doujinshis_actualite_minis/1.json
  def show
  end

  # GET /_doujinshis_actualite_minis/new
  def new
    @_doujinshis_actualite_mini = DoujinshisActualiteMini.new
  end

  # GET /_doujinshis_actualite_minis/1/edit
  def edit
  end

  # POST /_doujinshis_actualite_minis or /_doujinshis_actualite_minis.json
  def create
    @_doujinshis_actualite_mini = DoujinshisActualiteMini.new(_doujinshis_actualite_mini_params)

    respond_to do |format|
      if @_doujinshis_actualite_mini.save
        format.html { redirect_to doujinshis_actualite_mini_url(@_doujinshis_actualite_mini), notice: "Doujinshis actualite mini was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_actualite_mini }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_actualite_minis/1 or /_doujinshis_actualite_minis/1.json
  def update
    respond_to do |format|
      if @_doujinshis_actualite_mini.update(_doujinshis_actualite_mini_params)
        format.html { redirect_to doujinshis_actualite_mini_url(@_doujinshis_actualite_mini), notice: "Doujinshis actualite mini was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_actualite_mini }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_actualite_minis/1 or /_doujinshis_actualite_minis/1.json
  def destroy
    @_doujinshis_actualite_mini.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_actualite_minis_url, notice: "Doujinshis actualite mini was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_actualite_mini
      @_doujinshis_actualite_mini = DoujinshisActualiteMini.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_actualite_mini_params
      params.require(:doujinshis_actualite_mini).permit(:name)
    end
end
