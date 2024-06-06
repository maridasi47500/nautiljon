class DoujinsJvsController < ApplicationController
  before_action :set__doujins_jv, only: %i[ show edit update destroy ]

  # GET /_doujins_jvs or /_doujins_jvs.json
  def index
    @_doujins_jvs = DoujinsJv.all
  end

  # GET /_doujins_jvs/1 or /_doujins_jvs/1.json
  def show
  end

  # GET /_doujins_jvs/new
  def new
    @_doujins_jv = DoujinsJv.new
  end

  # GET /_doujins_jvs/1/edit
  def edit
  end

  # POST /_doujins_jvs or /_doujins_jvs.json
  def create
    @_doujins_jv = DoujinsJv.new(_doujins_jv_params)

    respond_to do |format|
      if @_doujins_jv.save
        format.html { redirect_to _doujins_jv_url(@_doujins_jv), notice: "Doujins jv was successfully created." }
        format.json { render :show, status: :created, location: @_doujins_jv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujins_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujins_jvs/1 or /_doujins_jvs/1.json
  def update
    respond_to do |format|
      if @_doujins_jv.update(_doujins_jv_params)
        format.html { redirect_to _doujins_jv_url(@_doujins_jv), notice: "Doujins jv was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujins_jv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujins_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujins_jvs/1 or /_doujins_jvs/1.json
  def destroy
    @_doujins_jv.destroy!

    respond_to do |format|
      format.html { redirect_to _doujins_jvs_url, notice: "Doujins jv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujins_jv
      @_doujins_jv = DoujinsJv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujins_jv_params
      params.require(:_doujins_jv).permit(:name)
    end
end
