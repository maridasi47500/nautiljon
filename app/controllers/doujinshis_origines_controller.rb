class DoujinshisOriginesController < ApplicationController
  before_action :set__doujinshis_origine, only: %i[ show edit update destroy ]

  # GET /_doujinshis_origines or /_doujinshis_origines.json
  def index
    @_doujinshis_origines = DoujinshisOrigine.all
  end

  # GET /_doujinshis_origines/1 or /_doujinshis_origines/1.json
  def show
  end

  # GET /_doujinshis_origines/new
  def new
    @_doujinshis_origine = DoujinshisOrigine.new
  end

  # GET /_doujinshis_origines/1/edit
  def edit
  end

  # POST /_doujinshis_origines or /_doujinshis_origines.json
  def create
    @_doujinshis_origine = DoujinshisOrigine.new(_doujinshis_origine_params)

    respond_to do |format|
      if @_doujinshis_origine.save
        format.html { redirect_to doujinshis_origine_url(@_doujinshis_origine), notice: "Doujinshis origine was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_origine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_origine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_origines/1 or /_doujinshis_origines/1.json
  def update
    respond_to do |format|
      if @_doujinshis_origine.update(_doujinshis_origine_params)
        format.html { redirect_to doujinshis_origine_url(@_doujinshis_origine), notice: "Doujinshis origine was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_origine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_origine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_origines/1 or /_doujinshis_origines/1.json
  def destroy
    @_doujinshis_origine.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_origines_url, notice: "Doujinshis origine was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_origine
      @_doujinshis_origine = DoujinshisOrigine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_origine_params
      params.require(:doujinshis_origine).permit(:name)
    end
end
