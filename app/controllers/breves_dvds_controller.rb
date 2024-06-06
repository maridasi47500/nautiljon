class BrevesDvdsController < ApplicationController
  before_action :set__breves_dvd, only: %i[ show edit update destroy ]

  # GET /_breves_dvds or /_breves_dvds.json
  def index
    @_breves_dvds = BrevesDvd.all
  end

  # GET /_breves_dvds/1 or /_breves_dvds/1.json
  def show
  end

  # GET /_breves_dvds/new
  def new
    @_breves_dvd = BrevesDvd.new
  end

  # GET /_breves_dvds/1/edit
  def edit
  end

  # POST /_breves_dvds or /_breves_dvds.json
  def create
    @_breves_dvd = BrevesDvd.new(_breves_dvd_params)

    respond_to do |format|
      if @_breves_dvd.save
        format.html { redirect_to breves_dvd_url(@_breves_dvd), notice: "Breves dvd was successfully created." }
        format.json { render :show, status: :created, location: @_breves_dvd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_dvd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_dvds/1 or /_breves_dvds/1.json
  def update
    respond_to do |format|
      if @_breves_dvd.update(_breves_dvd_params)
        format.html { redirect_to breves_dvd_url(@_breves_dvd), notice: "Breves dvd was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_dvd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_dvd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_dvds/1 or /_breves_dvds/1.json
  def destroy
    @_breves_dvd.destroy!

    respond_to do |format|
      format.html { redirect_to breves_dvds_url, notice: "Breves dvd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_dvd
      @_breves_dvd = BrevesDvd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_dvd_params
      params.require(:breves_dvd).permit(:name)
    end
end
