class DoujinshisJvsController < ApplicationController
  before_action :set__doujinshis_jv, only: %i[ show edit update destroy ]

  # GET /_doujinshis_jvs or /_doujinshis_jvs.json
  def index
    @_doujinshis_jvs = DoujinshisJv.all
  end

  # GET /_doujinshis_jvs/1 or /_doujinshis_jvs/1.json
  def show
  end

  # GET /_doujinshis_jvs/new
  def new
    @_doujinshis_jv = DoujinshisJv.new
  end

  # GET /_doujinshis_jvs/1/edit
  def edit
  end

  # POST /_doujinshis_jvs or /_doujinshis_jvs.json
  def create
    @_doujinshis_jv = DoujinshisJv.new(_doujinshis_jv_params)

    respond_to do |format|
      if @_doujinshis_jv.save
        format.html { redirect_to doujinshis_jv_url(@_doujinshis_jv), notice: "Doujinshis jv was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_jv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_jvs/1 or /_doujinshis_jvs/1.json
  def update
    respond_to do |format|
      if @_doujinshis_jv.update(_doujinshis_jv_params)
        format.html { redirect_to doujinshis_jv_url(@_doujinshis_jv), notice: "Doujinshis jv was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_jv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_jvs/1 or /_doujinshis_jvs/1.json
  def destroy
    @_doujinshis_jv.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_jvs_url, notice: "Doujinshis jv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_jv
      @_doujinshis_jv = DoujinshisJv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_jv_params
      params.require(:doujinshis_jv).permit(:name)
    end
end
