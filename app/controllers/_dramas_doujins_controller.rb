class DramasDoujinsController < ApplicationController
  before_action :set__dramas_doujin, only: %i[ show edit update destroy ]

  # GET /_dramas_doujins or /_dramas_doujins.json
  def index
    @_dramas_doujins = DramasDoujin.all
  end

  # GET /_dramas_doujins/1 or /_dramas_doujins/1.json
  def show
  end

  # GET /_dramas_doujins/new
  def new
    @_dramas_doujin = DramasDoujin.new
  end

  # GET /_dramas_doujins/1/edit
  def edit
  end

  # POST /_dramas_doujins or /_dramas_doujins.json
  def create
    @_dramas_doujin = DramasDoujin.new(_dramas_doujin_params)

    respond_to do |format|
      if @_dramas_doujin.save
        format.html { redirect_to _dramas_doujin_url(@_dramas_doujin), notice: "Dramas doujin was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_doujin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_doujin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_doujins/1 or /_dramas_doujins/1.json
  def update
    respond_to do |format|
      if @_dramas_doujin.update(_dramas_doujin_params)
        format.html { redirect_to _dramas_doujin_url(@_dramas_doujin), notice: "Dramas doujin was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_doujin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_doujin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_doujins/1 or /_dramas_doujins/1.json
  def destroy
    @_dramas_doujin.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_doujins_url, notice: "Dramas doujin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_doujin
      @_dramas_doujin = DramasDoujin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_doujin_params
      params.require(:_dramas_doujin).permit(:name)
    end
end
