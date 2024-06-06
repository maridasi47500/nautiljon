class ArtbooksPaysController < ApplicationController
  before_action :set_artbooks_pay, only: %i[ show edit update destroy ]

  # GET /artbooks_pays or /artbooks_pays.json
  def index
    @artbooks_pays = ArtbooksPay.all
  end

  # GET /artbooks_pays/1 or /artbooks_pays/1.json
  def show
  end

  # GET /artbooks_pays/new
  def new
    @artbooks_pay = ArtbooksPay.new
  end

  # GET /artbooks_pays/1/edit
  def edit
  end

  # POST /artbooks_pays or /artbooks_pays.json
  def create
    @artbooks_pay = ArtbooksPay.new(artbooks_pay_params)

    respond_to do |format|
      if @artbooks_pay.save
        format.html { redirect_to artbooks_pay_url(@artbooks_pay), notice: "Artbooks pay was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_pays/1 or /artbooks_pays/1.json
  def update
    respond_to do |format|
      if @artbooks_pay.update(artbooks_pay_params)
        format.html { redirect_to artbooks_pay_url(@artbooks_pay), notice: "Artbooks pay was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_pays/1 or /artbooks_pays/1.json
  def destroy
    @artbooks_pay.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_pays_url, notice: "Artbooks pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_pay
      @artbooks_pay = ArtbooksPay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_pay_params
      params.require(:artbooks_pay).permit(:name)
    end
end
