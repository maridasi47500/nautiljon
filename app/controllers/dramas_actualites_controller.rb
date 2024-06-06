class DramasActualitesController < ApplicationController
  before_action :set__dramas_actualite, only: %i[ show edit update destroy ]

  # GET /_dramas_actualites or /_dramas_actualites.json
  def index
    @_dramas_actualites = DramasActualite.all
  end

  # GET /_dramas_actualites/1 or /_dramas_actualites/1.json
  def show
  end

  # GET /_dramas_actualites/new
  def new
    @_dramas_actualite = DramasActualite.new
  end

  # GET /_dramas_actualites/1/edit
  def edit
  end

  # POST /_dramas_actualites or /_dramas_actualites.json
  def create
    @_dramas_actualite = DramasActualite.new(_dramas_actualite_params)

    respond_to do |format|
      if @_dramas_actualite.save
        format.html { redirect_to _dramas_actualite_url(@_dramas_actualite), notice: "Dramas actualite was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_actualite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_actualites/1 or /_dramas_actualites/1.json
  def update
    respond_to do |format|
      if @_dramas_actualite.update(_dramas_actualite_params)
        format.html { redirect_to _dramas_actualite_url(@_dramas_actualite), notice: "Dramas actualite was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_actualite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_actualites/1 or /_dramas_actualites/1.json
  def destroy
    @_dramas_actualite.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_actualites_url, notice: "Dramas actualite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_actualite
      @_dramas_actualite = DramasActualite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_actualite_params
      params.require(:_dramas_actualite).permit(:name)
    end
end
