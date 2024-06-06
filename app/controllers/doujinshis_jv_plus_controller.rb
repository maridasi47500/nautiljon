class DoujinshisJvPlusController < ApplicationController
  before_action :set__doujinshis_jv_plu, only: %i[ show edit update destroy ]

  # GET /_doujinshis_jv_plus or /_doujinshis_jv_plus.json
  def index
    @_doujinshis_jv_plus = DoujinshisJvPlu.all
  end

  # GET /_doujinshis_jv_plus/1 or /_doujinshis_jv_plus/1.json
  def show
  end

  # GET /_doujinshis_jv_plus/new
  def new
    @_doujinshis_jv_plu = DoujinshisJvPlu.new
  end

  # GET /_doujinshis_jv_plus/1/edit
  def edit
  end

  # POST /_doujinshis_jv_plus or /_doujinshis_jv_plus.json
  def create
    @_doujinshis_jv_plu = DoujinshisJvPlu.new(_doujinshis_jv_plu_params)

    respond_to do |format|
      if @_doujinshis_jv_plu.save
        format.html { redirect_to doujinshis_jv_plu_url(@_doujinshis_jv_plu), notice: "Doujinshis jv plu was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_jv_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_jv_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_jv_plus/1 or /_doujinshis_jv_plus/1.json
  def update
    respond_to do |format|
      if @_doujinshis_jv_plu.update(_doujinshis_jv_plu_params)
        format.html { redirect_to doujinshis_jv_plu_url(@_doujinshis_jv_plu), notice: "Doujinshis jv plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_jv_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_jv_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_jv_plus/1 or /_doujinshis_jv_plus/1.json
  def destroy
    @_doujinshis_jv_plu.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_jv_plus_url, notice: "Doujinshis jv plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_jv_plu
      @_doujinshis_jv_plu = DoujinshisJvPlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_jv_plu_params
      params.require(:doujinshis_jv_plu).permit(:name)
    end
end
