class DramasOriginesController < ApplicationController
  before_action :set__dramas_origine, only: %i[ show edit update destroy ]

  # GET /_dramas_origines or /_dramas_origines.json
  def index
    @_dramas_origines = DramasOrigine.all
  end

  # GET /_dramas_origines/1 or /_dramas_origines/1.json
  def show
  end

  # GET /_dramas_origines/new
  def new
    @_dramas_origine = DramasOrigine.new
  end

  # GET /_dramas_origines/1/edit
  def edit
  end

  # POST /_dramas_origines or /_dramas_origines.json
  def create
    @_dramas_origine = DramasOrigine.new(_dramas_origine_params)

    respond_to do |format|
      if @_dramas_origine.save
        format.html { redirect_to dramas_origine_url(@_dramas_origine), notice: "Dramas origine was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_origine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_origine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_origines/1 or /_dramas_origines/1.json
  def update
    respond_to do |format|
      if @_dramas_origine.update(_dramas_origine_params)
        format.html { redirect_to dramas_origine_url(@_dramas_origine), notice: "Dramas origine was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_origine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_origine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_origines/1 or /_dramas_origines/1.json
  def destroy
    @_dramas_origine.destroy!

    respond_to do |format|
      format.html { redirect_to dramas_origines_url, notice: "Dramas origine was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_origine
      @_dramas_origine = DramasOrigine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_origine_params
      params.require(:dramas_origine).permit(:name)
    end
end
