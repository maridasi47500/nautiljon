class GoodiesBonusController < ApplicationController
  before_action :set__goodies_bonu, only: %i[ show edit update destroy ]

  # GET /_goodies_bonus or /_goodies_bonus.json
  def index
    @_goodies_bonus = GoodiesBonu.all
  end

  # GET /_goodies_bonus/1 or /_goodies_bonus/1.json
  def show
  end

  # GET /_goodies_bonus/new
  def new
    @_goodies_bonu = GoodiesBonu.new
  end

  # GET /_goodies_bonus/1/edit
  def edit
  end

  # POST /_goodies_bonus or /_goodies_bonus.json
  def create
    @_goodies_bonu = GoodiesBonu.new(_goodies_bonu_params)

    respond_to do |format|
      if @_goodies_bonu.save
        format.html { redirect_to _goodies_bonu_url(@_goodies_bonu), notice: "Goodies bonu was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_bonu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_bonu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_bonus/1 or /_goodies_bonus/1.json
  def update
    respond_to do |format|
      if @_goodies_bonu.update(_goodies_bonu_params)
        format.html { redirect_to _goodies_bonu_url(@_goodies_bonu), notice: "Goodies bonu was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_bonu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_bonu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_bonus/1 or /_goodies_bonus/1.json
  def destroy
    @_goodies_bonu.destroy!

    respond_to do |format|
      format.html { redirect_to _goodies_bonus_url, notice: "Goodies bonu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_bonu
      @_goodies_bonu = GoodiesBonu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_bonu_params
      params.require(:_goodies_bonu).permit(:name)
    end
end
