class DoujinshisAmPlusController < ApplicationController
  before_action :set__doujinshis_am_plu, only: %i[ show edit update destroy ]

  # GET /_doujinshis_am_plus or /_doujinshis_am_plus.json
  def index
    @_doujinshis_am_plus = DoujinshisAmPlu.all
  end

  # GET /_doujinshis_am_plus/1 or /_doujinshis_am_plus/1.json
  def show
  end

  # GET /_doujinshis_am_plus/new
  def new
    @_doujinshis_am_plu = DoujinshisAmPlu.new
  end

  # GET /_doujinshis_am_plus/1/edit
  def edit
  end

  # POST /_doujinshis_am_plus or /_doujinshis_am_plus.json
  def create
    @_doujinshis_am_plu = DoujinshisAmPlu.new(_doujinshis_am_plu_params)

    respond_to do |format|
      if @_doujinshis_am_plu.save
        format.html { redirect_to _doujinshis_am_plu_url(@_doujinshis_am_plu), notice: "Doujinshis am plu was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_am_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_am_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_am_plus/1 or /_doujinshis_am_plus/1.json
  def update
    respond_to do |format|
      if @_doujinshis_am_plu.update(_doujinshis_am_plu_params)
        format.html { redirect_to _doujinshis_am_plu_url(@_doujinshis_am_plu), notice: "Doujinshis am plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_am_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_am_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_am_plus/1 or /_doujinshis_am_plus/1.json
  def destroy
    @_doujinshis_am_plu.destroy!

    respond_to do |format|
      format.html { redirect_to _doujinshis_am_plus_url, notice: "Doujinshis am plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_am_plu
      @_doujinshis_am_plu = DoujinshisAmPlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_am_plu_params
      params.require(:_doujinshis_am_plu).permit(:name)
    end
end
