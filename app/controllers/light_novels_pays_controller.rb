class LightNovelsPaysController < ApplicationController
  before_action :set__light_novels_pay, only: %i[ show edit update destroy ]

  # GET /_light_novels_pays or /_light_novels_pays.json
  def index
    @_light_novels_pays = LightNovelsPay.all
  end

  # GET /_light_novels_pays/1 or /_light_novels_pays/1.json
  def show
  end

  # GET /_light_novels_pays/new
  def new
    @_light_novels_pay = LightNovelsPay.new
  end

  # GET /_light_novels_pays/1/edit
  def edit
  end

  # POST /_light_novels_pays or /_light_novels_pays.json
  def create
    @_light_novels_pay = LightNovelsPay.new(_light_novels_pay_params)

    respond_to do |format|
      if @_light_novels_pay.save
        format.html { redirect_to _light_novels_pay_url(@_light_novels_pay), notice: "Light novels pay was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_pays/1 or /_light_novels_pays/1.json
  def update
    respond_to do |format|
      if @_light_novels_pay.update(_light_novels_pay_params)
        format.html { redirect_to _light_novels_pay_url(@_light_novels_pay), notice: "Light novels pay was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_pays/1 or /_light_novels_pays/1.json
  def destroy
    @_light_novels_pay.destroy!

    respond_to do |format|
      format.html { redirect_to _light_novels_pays_url, notice: "Light novels pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_pay
      @_light_novels_pay = LightNovelsPay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_pay_params
      params.require(:_light_novels_pay).permit(:name)
    end
end
