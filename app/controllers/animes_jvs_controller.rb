class AnimesJvsController < ApplicationController
  before_action :set_animes_jv, only: %i[ show edit update destroy ]

  # GET /animes_jvs or /animes_jvs.json
  def index
    @animes_jvs = AnimesJv.all
  end

  # GET /animes_jvs/1 or /animes_jvs/1.json
  def show
  end

  # GET /animes_jvs/new
  def new
    @animes_jv = AnimesJv.new
  end

  # GET /animes_jvs/1/edit
  def edit
  end

  # POST /animes_jvs or /animes_jvs.json
  def create
    @animes_jv = AnimesJv.new(animes_jv_params)

    respond_to do |format|
      if @animes_jv.save
        format.html { redirect_to animes_jv_url(@animes_jv), notice: "Animes jv was successfully created." }
        format.json { render :show, status: :created, location: @animes_jv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_jvs/1 or /animes_jvs/1.json
  def update
    respond_to do |format|
      if @animes_jv.update(animes_jv_params)
        format.html { redirect_to animes_jv_url(@animes_jv), notice: "Animes jv was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_jv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_jvs/1 or /animes_jvs/1.json
  def destroy
    @animes_jv.destroy!

    respond_to do |format|
      format.html { redirect_to animes_jvs_url, notice: "Animes jv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_jv
      @animes_jv = AnimesJv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_jv_params
      params.require(:animes_jv).permit(:name)
    end
end
