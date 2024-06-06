class GoodiesOstsController < ApplicationController
  before_action :set__goodies_ost, only: %i[ show edit update destroy ]

  # GET /_goodies_osts or /_goodies_osts.json
  def index
    @_goodies_osts = GoodiesOst.all
  end

  # GET /_goodies_osts/1 or /_goodies_osts/1.json
  def show
  end

  # GET /_goodies_osts/new
  def new
    @_goodies_ost = GoodiesOst.new
  end

  # GET /_goodies_osts/1/edit
  def edit
  end

  # POST /_goodies_osts or /_goodies_osts.json
  def create
    @_goodies_ost = GoodiesOst.new(_goodies_ost_params)

    respond_to do |format|
      if @_goodies_ost.save
        format.html { redirect_to _goodies_ost_url(@_goodies_ost), notice: "Goodies ost was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_ost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_ost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_osts/1 or /_goodies_osts/1.json
  def update
    respond_to do |format|
      if @_goodies_ost.update(_goodies_ost_params)
        format.html { redirect_to _goodies_ost_url(@_goodies_ost), notice: "Goodies ost was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_ost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_ost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_osts/1 or /_goodies_osts/1.json
  def destroy
    @_goodies_ost.destroy!

    respond_to do |format|
      format.html { redirect_to _goodies_osts_url, notice: "Goodies ost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_ost
      @_goodies_ost = GoodiesOst.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_ost_params
      params.require(:_goodies_ost).permit(:name)
    end
end
