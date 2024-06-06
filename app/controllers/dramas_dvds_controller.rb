class DramasDvdsController < ApplicationController
  before_action :set__dramas_dvd, only: %i[ show edit update destroy ]

  # GET /_dramas_dvds or /_dramas_dvds.json
  def index
    @_dramas_dvds = DramasDvd.all
  end

  # GET /_dramas_dvds/1 or /_dramas_dvds/1.json
  def show
  end

  # GET /_dramas_dvds/new
  def new
    @_dramas_dvd = DramasDvd.new
  end

  # GET /_dramas_dvds/1/edit
  def edit
  end

  # POST /_dramas_dvds or /_dramas_dvds.json
  def create
    @_dramas_dvd = DramasDvd.new(_dramas_dvd_params)

    respond_to do |format|
      if @_dramas_dvd.save
        format.html { redirect_to _dramas_dvd_url(@_dramas_dvd), notice: "Dramas dvd was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_dvd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_dvd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_dvds/1 or /_dramas_dvds/1.json
  def update
    respond_to do |format|
      if @_dramas_dvd.update(_dramas_dvd_params)
        format.html { redirect_to _dramas_dvd_url(@_dramas_dvd), notice: "Dramas dvd was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_dvd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_dvd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_dvds/1 or /_dramas_dvds/1.json
  def destroy
    @_dramas_dvd.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_dvds_url, notice: "Dramas dvd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_dvd
      @_dramas_dvd = DramasDvd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_dvd_params
      params.require(:_dramas_dvd).permit(:name)
    end
end
