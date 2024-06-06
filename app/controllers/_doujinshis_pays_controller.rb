class DoujinshisPaysController < ApplicationController
  before_action :set__doujinshis_pay, only: %i[ show edit update destroy ]

  # GET /_doujinshis_pays or /_doujinshis_pays.json
  def index
    @_doujinshis_pays = DoujinshisPay.all
  end

  # GET /_doujinshis_pays/1 or /_doujinshis_pays/1.json
  def show
  end

  # GET /_doujinshis_pays/new
  def new
    @_doujinshis_pay = DoujinshisPay.new
  end

  # GET /_doujinshis_pays/1/edit
  def edit
  end

  # POST /_doujinshis_pays or /_doujinshis_pays.json
  def create
    @_doujinshis_pay = DoujinshisPay.new(_doujinshis_pay_params)

    respond_to do |format|
      if @_doujinshis_pay.save
        format.html { redirect_to _doujinshis_pay_url(@_doujinshis_pay), notice: "Doujinshis pay was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_pays/1 or /_doujinshis_pays/1.json
  def update
    respond_to do |format|
      if @_doujinshis_pay.update(_doujinshis_pay_params)
        format.html { redirect_to _doujinshis_pay_url(@_doujinshis_pay), notice: "Doujinshis pay was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_pays/1 or /_doujinshis_pays/1.json
  def destroy
    @_doujinshis_pay.destroy!

    respond_to do |format|
      format.html { redirect_to _doujinshis_pays_url, notice: "Doujinshis pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_pay
      @_doujinshis_pay = DoujinshisPay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_pay_params
      params.require(:_doujinshis_pay).permit(:name)
    end
end
