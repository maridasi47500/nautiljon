class DramasJvsController < ApplicationController
  before_action :set__dramas_jv, only: %i[ show edit update destroy ]

  # GET /_dramas_jvs or /_dramas_jvs.json
  def index
    @_dramas_jvs = DramasJv.all
  end

  # GET /_dramas_jvs/1 or /_dramas_jvs/1.json
  def show
  end

  # GET /_dramas_jvs/new
  def new
    @_dramas_jv = DramasJv.new
  end

  # GET /_dramas_jvs/1/edit
  def edit
  end

  # POST /_dramas_jvs or /_dramas_jvs.json
  def create
    @_dramas_jv = DramasJv.new(_dramas_jv_params)

    respond_to do |format|
      if @_dramas_jv.save
        format.html { redirect_to _dramas_jv_url(@_dramas_jv), notice: "Dramas jv was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_jv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_jvs/1 or /_dramas_jvs/1.json
  def update
    respond_to do |format|
      if @_dramas_jv.update(_dramas_jv_params)
        format.html { redirect_to _dramas_jv_url(@_dramas_jv), notice: "Dramas jv was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_jv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_jvs/1 or /_dramas_jvs/1.json
  def destroy
    @_dramas_jv.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_jvs_url, notice: "Dramas jv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_jv
      @_dramas_jv = DramasJv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_jv_params
      params.require(:_dramas_jv).permit(:name)
    end
end
