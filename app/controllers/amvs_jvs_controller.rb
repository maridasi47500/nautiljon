class AmvsJvsController < ApplicationController
  before_action :set_amvs_jv, only: %i[ show edit update destroy ]

  # GET /amvs_jvs or /amvs_jvs.json
  def index
    @amvs_jvs = AmvsJv.all
  end

  # GET /amvs_jvs/1 or /amvs_jvs/1.json
  def show
  end

  # GET /amvs_jvs/new
  def new
    @amvs_jv = AmvsJv.new
  end

  # GET /amvs_jvs/1/edit
  def edit
  end

  # POST /amvs_jvs or /amvs_jvs.json
  def create
    @amvs_jv = AmvsJv.new(amvs_jv_params)

    respond_to do |format|
      if @amvs_jv.save
        format.html { redirect_to amvs_jv_url(@amvs_jv), notice: "Amvs jv was successfully created." }
        format.json { render :show, status: :created, location: @amvs_jv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @amvs_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amvs_jvs/1 or /amvs_jvs/1.json
  def update
    respond_to do |format|
      if @amvs_jv.update(amvs_jv_params)
        format.html { redirect_to amvs_jv_url(@amvs_jv), notice: "Amvs jv was successfully updated." }
        format.json { render :show, status: :ok, location: @amvs_jv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @amvs_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amvs_jvs/1 or /amvs_jvs/1.json
  def destroy
    @amvs_jv.destroy!

    respond_to do |format|
      format.html { redirect_to amvs_jvs_url, notice: "Amvs jv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amvs_jv
      @amvs_jv = AmvsJv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def amvs_jv_params
      params.require(:amvs_jv).permit(:name)
    end
end
