class GoodiesDvdsController < ApplicationController
  before_action :set__goodies_dvd, only: %i[ show edit update destroy ]

  # GET /_goodies_dvds or /_goodies_dvds.json
  def index
    @_goodies_dvds = GoodiesDvd.all
  end

  # GET /_goodies_dvds/1 or /_goodies_dvds/1.json
  def show
  end

  # GET /_goodies_dvds/new
  def new
    @_goodies_dvd = GoodiesDvd.new
  end

  # GET /_goodies_dvds/1/edit
  def edit
  end

  # POST /_goodies_dvds or /_goodies_dvds.json
  def create
    @_goodies_dvd = GoodiesDvd.new(_goodies_dvd_params)

    respond_to do |format|
      if @_goodies_dvd.save
        format.html { redirect_to _goodies_dvd_url(@_goodies_dvd), notice: "Goodies dvd was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_dvd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_dvd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_dvds/1 or /_goodies_dvds/1.json
  def update
    respond_to do |format|
      if @_goodies_dvd.update(_goodies_dvd_params)
        format.html { redirect_to _goodies_dvd_url(@_goodies_dvd), notice: "Goodies dvd was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_dvd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_dvd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_dvds/1 or /_goodies_dvds/1.json
  def destroy
    @_goodies_dvd.destroy!

    respond_to do |format|
      format.html { redirect_to _goodies_dvds_url, notice: "Goodies dvd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_dvd
      @_goodies_dvd = GoodiesDvd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_dvd_params
      params.require(:_goodies_dvd).permit(:name)
    end
end
