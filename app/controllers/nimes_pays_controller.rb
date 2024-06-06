class AnimesPaysController < ApplicationController
  before_action :set_animes_pay, only: %i[ show edit update destroy ]

  # GET /animes_pays or /animes_pays.json
  def index
    @animes_pays = AnimesPay.all
  end

  # GET /animes_pays/1 or /animes_pays/1.json
  def show
  end

  # GET /animes_pays/new
  def new
    @animes_pay = AnimesPay.new
  end

  # GET /animes_pays/1/edit
  def edit
  end

  # POST /animes_pays or /animes_pays.json
  def create
    @animes_pay = AnimesPay.new(animes_pay_params)

    respond_to do |format|
      if @animes_pay.save
        format.html { redirect_to animes_pay_url(@animes_pay), notice: "Animes pay was successfully created." }
        format.json { render :show, status: :created, location: @animes_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_pays/1 or /animes_pays/1.json
  def update
    respond_to do |format|
      if @animes_pay.update(animes_pay_params)
        format.html { redirect_to animes_pay_url(@animes_pay), notice: "Animes pay was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_pays/1 or /animes_pays/1.json
  def destroy
    @animes_pay.destroy!

    respond_to do |format|
      format.html { redirect_to animes_pays_url, notice: "Animes pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_pay
      @animes_pay = AnimesPay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_pay_params
      params.require(:animes_pay).permit(:name)
    end
end
