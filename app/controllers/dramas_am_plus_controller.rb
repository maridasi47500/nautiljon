class DramasAmPlusController < ApplicationController
  before_action :set__dramas_am_plu, only: %i[ show edit update destroy ]

  # GET /_dramas_am_plus or /_dramas_am_plus.json
  def index
    @_dramas_am_plus = DramasAmPlu.all
  end

  # GET /_dramas_am_plus/1 or /_dramas_am_plus/1.json
  def show
  end

  # GET /_dramas_am_plus/new
  def new
    @_dramas_am_plu = DramasAmPlu.new
  end

  # GET /_dramas_am_plus/1/edit
  def edit
  end

  # POST /_dramas_am_plus or /_dramas_am_plus.json
  def create
    @_dramas_am_plu = DramasAmPlu.new(_dramas_am_plu_params)

    respond_to do |format|
      if @_dramas_am_plu.save
        format.html { redirect_to _dramas_am_plu_url(@_dramas_am_plu), notice: "Dramas am plu was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_am_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_am_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_am_plus/1 or /_dramas_am_plus/1.json
  def update
    respond_to do |format|
      if @_dramas_am_plu.update(_dramas_am_plu_params)
        format.html { redirect_to _dramas_am_plu_url(@_dramas_am_plu), notice: "Dramas am plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_am_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_am_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_am_plus/1 or /_dramas_am_plus/1.json
  def destroy
    @_dramas_am_plu.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_am_plus_url, notice: "Dramas am plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_am_plu
      @_dramas_am_plu = DramasAmPlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_am_plu_params
      params.require(:_dramas_am_plu).permit(:name)
    end
end
