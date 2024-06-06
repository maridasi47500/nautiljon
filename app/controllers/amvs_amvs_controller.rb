class AmvsAmvsController < ApplicationController
  before_action :set_amvs_amv, only: %i[ show edit update destroy ]

  # GET /amvs_amvs or /amvs_amvs.json
  def index
    @amvs_amvs = AmvsAmv.all
  end

  # GET /amvs_amvs/1 or /amvs_amvs/1.json
  def show
  end

  # GET /amvs_amvs/new
  def new
    @amvs_amv = AmvsAmv.new
  end

  # GET /amvs_amvs/1/edit
  def edit
  end

  # POST /amvs_amvs or /amvs_amvs.json
  def create
    @amvs_amv = AmvsAmv.new(amvs_amv_params)

    respond_to do |format|
      if @amvs_amv.save
        format.html { redirect_to amvs_amv_url(@amvs_amv), notice: "Amvs amv was successfully created." }
        format.json { render :show, status: :created, location: @amvs_amv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @amvs_amv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amvs_amvs/1 or /amvs_amvs/1.json
  def update
    respond_to do |format|
      if @amvs_amv.update(amvs_amv_params)
        format.html { redirect_to amvs_amv_url(@amvs_amv), notice: "Amvs amv was successfully updated." }
        format.json { render :show, status: :ok, location: @amvs_amv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @amvs_amv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amvs_amvs/1 or /amvs_amvs/1.json
  def destroy
    @amvs_amv.destroy!

    respond_to do |format|
      format.html { redirect_to amvs_amvs_url, notice: "Amvs amv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amvs_amv
      @amvs_amv = AmvsAmv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def amvs_amv_params
      params.require(:amvs_amv).permit(:name)
    end
end
