class DoujinshisFrancesController < ApplicationController
  before_action :set__doujinshis_france, only: %i[ show edit update destroy ]

  # GET /_doujinshis_frances or /_doujinshis_frances.json
  def index
    @_doujinshis_frances = DoujinshisFrance.all
  end

  # GET /_doujinshis_frances/1 or /_doujinshis_frances/1.json
  def show
  end

  # GET /_doujinshis_frances/new
  def new
    @_doujinshis_france = DoujinshisFrance.new
  end

  # GET /_doujinshis_frances/1/edit
  def edit
  end

  # POST /_doujinshis_frances or /_doujinshis_frances.json
  def create
    @_doujinshis_france = DoujinshisFrance.new(_doujinshis_france_params)

    respond_to do |format|
      if @_doujinshis_france.save
        format.html { redirect_to _doujinshis_france_url(@_doujinshis_france), notice: "Doujinshis france was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_france }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_france.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_frances/1 or /_doujinshis_frances/1.json
  def update
    respond_to do |format|
      if @_doujinshis_france.update(_doujinshis_france_params)
        format.html { redirect_to _doujinshis_france_url(@_doujinshis_france), notice: "Doujinshis france was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_france }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_france.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_frances/1 or /_doujinshis_frances/1.json
  def destroy
    @_doujinshis_france.destroy!

    respond_to do |format|
      format.html { redirect_to _doujinshis_frances_url, notice: "Doujinshis france was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_france
      @_doujinshis_france = DoujinshisFrance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_france_params
      params.require(:_doujinshis_france).permit(:name)
    end
end
