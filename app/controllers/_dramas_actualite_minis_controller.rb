class DramasActualiteMinisController < ApplicationController
  before_action :set__dramas_actualite_mini, only: %i[ show edit update destroy ]

  # GET /_dramas_actualite_minis or /_dramas_actualite_minis.json
  def index
    @_dramas_actualite_minis = DramasActualiteMini.all
  end

  # GET /_dramas_actualite_minis/1 or /_dramas_actualite_minis/1.json
  def show
  end

  # GET /_dramas_actualite_minis/new
  def new
    @_dramas_actualite_mini = DramasActualiteMini.new
  end

  # GET /_dramas_actualite_minis/1/edit
  def edit
  end

  # POST /_dramas_actualite_minis or /_dramas_actualite_minis.json
  def create
    @_dramas_actualite_mini = DramasActualiteMini.new(_dramas_actualite_mini_params)

    respond_to do |format|
      if @_dramas_actualite_mini.save
        format.html { redirect_to _dramas_actualite_mini_url(@_dramas_actualite_mini), notice: "Dramas actualite mini was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_actualite_mini }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_actualite_minis/1 or /_dramas_actualite_minis/1.json
  def update
    respond_to do |format|
      if @_dramas_actualite_mini.update(_dramas_actualite_mini_params)
        format.html { redirect_to _dramas_actualite_mini_url(@_dramas_actualite_mini), notice: "Dramas actualite mini was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_actualite_mini }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_actualite_minis/1 or /_dramas_actualite_minis/1.json
  def destroy
    @_dramas_actualite_mini.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_actualite_minis_url, notice: "Dramas actualite mini was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_actualite_mini
      @_dramas_actualite_mini = DramasActualiteMini.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_actualite_mini_params
      params.require(:_dramas_actualite_mini).permit(:name)
    end
end
