class FilmsAsiatiquesPaysController < ApplicationController
  before_action :set__films_asiatiques_pay, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_pays or /_films_asiatiques_pays.json
  def index
    @_films_asiatiques_pays = FilmsAsiatiquesPay.all
  end

  # GET /_films_asiatiques_pays/1 or /_films_asiatiques_pays/1.json
  def show
  end

  # GET /_films_asiatiques_pays/new
  def new
    @_films_asiatiques_pay = FilmsAsiatiquesPay.new
  end

  # GET /_films_asiatiques_pays/1/edit
  def edit
  end

  # POST /_films_asiatiques_pays or /_films_asiatiques_pays.json
  def create
    @_films_asiatiques_pay = FilmsAsiatiquesPay.new(_films_asiatiques_pay_params)

    respond_to do |format|
      if @_films_asiatiques_pay.save
        format.html { redirect_to films_asiatiques_pay_url(@_films_asiatiques_pay), notice: "Films asiatiques pay was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_pays/1 or /_films_asiatiques_pays/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_pay.update(_films_asiatiques_pay_params)
        format.html { redirect_to films_asiatiques_pay_url(@_films_asiatiques_pay), notice: "Films asiatiques pay was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_pays/1 or /_films_asiatiques_pays/1.json
  def destroy
    @_films_asiatiques_pay.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_pays_url, notice: "Films asiatiques pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_pay
      @_films_asiatiques_pay = FilmsAsiatiquesPay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_pay_params
      params.require(:films_asiatiques_pay).permit(:name)
    end
end
