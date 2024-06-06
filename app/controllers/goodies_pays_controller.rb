class GoodiesPaysController < ApplicationController
  before_action :set__goodies_pay, only: %i[ show edit update destroy ]

  # GET /_goodies_pays or /_goodies_pays.json
  def index
    @_goodies_pays = GoodiesPay.all
  end

  # GET /_goodies_pays/1 or /_goodies_pays/1.json
  def show
  end

  # GET /_goodies_pays/new
  def new
    @_goodies_pay = GoodiesPay.new
  end

  # GET /_goodies_pays/1/edit
  def edit
  end

  # POST /_goodies_pays or /_goodies_pays.json
  def create
    @_goodies_pay = GoodiesPay.new(_goodies_pay_params)

    respond_to do |format|
      if @_goodies_pay.save
        format.html { redirect_to goodies_pay_url(@_goodies_pay), notice: "Goodies pay was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_pays/1 or /_goodies_pays/1.json
  def update
    respond_to do |format|
      if @_goodies_pay.update(_goodies_pay_params)
        format.html { redirect_to goodies_pay_url(@_goodies_pay), notice: "Goodies pay was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_pays/1 or /_goodies_pays/1.json
  def destroy
    @_goodies_pay.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_pays_url, notice: "Goodies pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_pay
      @_goodies_pay = GoodiesPay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_pay_params
      params.require(:goodies_pay).permit(:name)
    end
end
