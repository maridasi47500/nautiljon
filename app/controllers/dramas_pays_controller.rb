class DramasPaysController < ApplicationController
  before_action :set__dramas_pay, only: %i[ show edit update destroy ]

  # GET /_dramas_pays or /_dramas_pays.json
  def index
    @_dramas_pays = DramasPay.all
  end

  # GET /_dramas_pays/1 or /_dramas_pays/1.json
  def show
  end

  # GET /_dramas_pays/new
  def new
    @_dramas_pay = DramasPay.new
  end

  # GET /_dramas_pays/1/edit
  def edit
  end

  # POST /_dramas_pays or /_dramas_pays.json
  def create
    @_dramas_pay = DramasPay.new(_dramas_pay_params)

    respond_to do |format|
      if @_dramas_pay.save
        format.html { redirect_to dramas_pay_url(@_dramas_pay), notice: "Dramas pay was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_pays/1 or /_dramas_pays/1.json
  def update
    respond_to do |format|
      if @_dramas_pay.update(_dramas_pay_params)
        format.html { redirect_to dramas_pay_url(@_dramas_pay), notice: "Dramas pay was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_pays/1 or /_dramas_pays/1.json
  def destroy
    @_dramas_pay.destroy!

    respond_to do |format|
      format.html { redirect_to dramas_pays_url, notice: "Dramas pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_pay
      @_dramas_pay = DramasPay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_pay_params
      params.require(:dramas_pay).permit(:name)
    end
end
