class EvenementsPaysController < ApplicationController
  before_action :set_evenements_pay, only: %i[ show edit update destroy ]

  # GET /evenements_pays or /evenements_pays.json
  def index
    @evenements_pays = EvenementsPay.all
  end

  # GET /evenements_pays/1 or /evenements_pays/1.json
  def show
  end

  # GET /evenements_pays/new
  def new
    @evenements_pay = EvenementsPay.new
  end

  # GET /evenements_pays/1/edit
  def edit
  end

  # POST /evenements_pays or /evenements_pays.json
  def create
    @evenements_pay = EvenementsPay.new(evenements_pay_params)

    respond_to do |format|
      if @evenements_pay.save
        format.html { redirect_to evenements_pay_url(@evenements_pay), notice: "Evenements pay was successfully created." }
        format.json { render :show, status: :created, location: @evenements_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @evenements_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evenements_pays/1 or /evenements_pays/1.json
  def update
    respond_to do |format|
      if @evenements_pay.update(evenements_pay_params)
        format.html { redirect_to evenements_pay_url(@evenements_pay), notice: "Evenements pay was successfully updated." }
        format.json { render :show, status: :ok, location: @evenements_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @evenements_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evenements_pays/1 or /evenements_pays/1.json
  def destroy
    @evenements_pay.destroy!

    respond_to do |format|
      format.html { redirect_to evenements_pays_url, notice: "Evenements pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evenements_pay
      @evenements_pay = EvenementsPay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def evenements_pay_params
      params.require(:evenements_pay).permit(:name)
    end
end
