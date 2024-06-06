class ConcertsPaysController < ApplicationController
  before_action :set__concerts_pay, only: %i[ show edit update destroy ]

  # GET /_concerts_pays or /_concerts_pays.json
  def index
    @_concerts_pays = ConcertsPay.all
  end

  # GET /_concerts_pays/1 or /_concerts_pays/1.json
  def show
  end

  # GET /_concerts_pays/new
  def new
    @_concerts_pay = ConcertsPay.new
  end

  # GET /_concerts_pays/1/edit
  def edit
  end

  # POST /_concerts_pays or /_concerts_pays.json
  def create
    @_concerts_pay = ConcertsPay.new(_concerts_pay_params)

    respond_to do |format|
      if @_concerts_pay.save
        format.html { redirect_to concerts_pay_url(@_concerts_pay), notice: "Concerts pay was successfully created." }
        format.json { render :show, status: :created, location: @_concerts_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_concerts_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_concerts_pays/1 or /_concerts_pays/1.json
  def update
    respond_to do |format|
      if @_concerts_pay.update(_concerts_pay_params)
        format.html { redirect_to concerts_pay_url(@_concerts_pay), notice: "Concerts pay was successfully updated." }
        format.json { render :show, status: :ok, location: @_concerts_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_concerts_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_concerts_pays/1 or /_concerts_pays/1.json
  def destroy
    @_concerts_pay.destroy!

    respond_to do |format|
      format.html { redirect_to concerts_pays_url, notice: "Concerts pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__concerts_pay
      @_concerts_pay = ConcertsPay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _concerts_pay_params
      params.require(:concerts_pay).permit(:name)
    end
end
