class GoodiesJvsController < ApplicationController
  before_action :set__goodies_jv, only: %i[ show edit update destroy ]

  # GET /_goodies_jvs or /_goodies_jvs.json
  def index
    @_goodies_jvs = GoodiesJv.all
  end

  # GET /_goodies_jvs/1 or /_goodies_jvs/1.json
  def show
  end

  # GET /_goodies_jvs/new
  def new
    @_goodies_jv = GoodiesJv.new
  end

  # GET /_goodies_jvs/1/edit
  def edit
  end

  # POST /_goodies_jvs or /_goodies_jvs.json
  def create
    @_goodies_jv = GoodiesJv.new(_goodies_jv_params)

    respond_to do |format|
      if @_goodies_jv.save
        format.html { redirect_to goodies_jv_url(@_goodies_jv), notice: "Goodies jv was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_jv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_jvs/1 or /_goodies_jvs/1.json
  def update
    respond_to do |format|
      if @_goodies_jv.update(_goodies_jv_params)
        format.html { redirect_to goodies_jv_url(@_goodies_jv), notice: "Goodies jv was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_jv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_jvs/1 or /_goodies_jvs/1.json
  def destroy
    @_goodies_jv.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_jvs_url, notice: "Goodies jv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_jv
      @_goodies_jv = GoodiesJv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_jv_params
      params.require(:goodies_jv).permit(:name)
    end
end
