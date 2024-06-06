class AnimesAmvsController < ApplicationController
  before_action :set_animes_amv, only: %i[ show edit update destroy ]

  # GET /animes_amvs or /animes_amvs.json
  def index
    @animes_amvs = AnimesAmv.all
  end

  # GET /animes_amvs/1 or /animes_amvs/1.json
  def show
  end

  # GET /animes_amvs/new
  def new
    @animes_amv = AnimesAmv.new
  end

  # GET /animes_amvs/1/edit
  def edit
  end

  # POST /animes_amvs or /animes_amvs.json
  def create
    @animes_amv = AnimesAmv.new(animes_amv_params)

    respond_to do |format|
      if @animes_amv.save
        format.html { redirect_to animes_amv_url(@animes_amv), notice: "Animes amv was successfully created." }
        format.json { render :show, status: :created, location: @animes_amv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_amv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_amvs/1 or /animes_amvs/1.json
  def update
    respond_to do |format|
      if @animes_amv.update(animes_amv_params)
        format.html { redirect_to animes_amv_url(@animes_amv), notice: "Animes amv was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_amv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_amv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_amvs/1 or /animes_amvs/1.json
  def destroy
    @animes_amv.destroy!

    respond_to do |format|
      format.html { redirect_to animes_amvs_url, notice: "Animes amv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_amv
      @animes_amv = AnimesAmv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_amv_params
      params.require(:animes_amv).permit(:name)
    end
end
