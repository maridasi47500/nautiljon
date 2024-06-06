class DramasUniversController < ApplicationController
  before_action :set__dramas_univer, only: %i[ show edit update destroy ]

  # GET /_dramas_univers or /_dramas_univers.json
  def index
    @_dramas_univers = DramasUniver.all
  end

  # GET /_dramas_univers/1 or /_dramas_univers/1.json
  def show
  end

  # GET /_dramas_univers/new
  def new
    @_dramas_univer = DramasUniver.new
  end

  # GET /_dramas_univers/1/edit
  def edit
  end

  # POST /_dramas_univers or /_dramas_univers.json
  def create
    @_dramas_univer = DramasUniver.new(_dramas_univer_params)

    respond_to do |format|
      if @_dramas_univer.save
        format.html { redirect_to _dramas_univer_url(@_dramas_univer), notice: "Dramas univer was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_univer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_univer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_univers/1 or /_dramas_univers/1.json
  def update
    respond_to do |format|
      if @_dramas_univer.update(_dramas_univer_params)
        format.html { redirect_to _dramas_univer_url(@_dramas_univer), notice: "Dramas univer was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_univer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_univer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_univers/1 or /_dramas_univers/1.json
  def destroy
    @_dramas_univer.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_univers_url, notice: "Dramas univer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_univer
      @_dramas_univer = DramasUniver.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_univer_params
      params.require(:_dramas_univer).permit(:name)
    end
end
