class GoodiesAmsController < ApplicationController
  before_action :set__goodies_am, only: %i[ show edit update destroy ]

  # GET /_goodies_ams or /_goodies_ams.json
  def index
    @_goodies_ams = GoodiesAm.all
  end

  # GET /_goodies_ams/1 or /_goodies_ams/1.json
  def show
  end

  # GET /_goodies_ams/new
  def new
    @_goodies_am = GoodiesAm.new
  end

  # GET /_goodies_ams/1/edit
  def edit
  end

  # POST /_goodies_ams or /_goodies_ams.json
  def create
    @_goodies_am = GoodiesAm.new(_goodies_am_params)

    respond_to do |format|
      if @_goodies_am.save
        format.html { redirect_to _goodies_am_url(@_goodies_am), notice: "Goodies am was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_am }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_ams/1 or /_goodies_ams/1.json
  def update
    respond_to do |format|
      if @_goodies_am.update(_goodies_am_params)
        format.html { redirect_to _goodies_am_url(@_goodies_am), notice: "Goodies am was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_am }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_ams/1 or /_goodies_ams/1.json
  def destroy
    @_goodies_am.destroy!

    respond_to do |format|
      format.html { redirect_to _goodies_ams_url, notice: "Goodies am was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_am
      @_goodies_am = GoodiesAm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_am_params
      params.require(:_goodies_am).permit(:name)
    end
end
