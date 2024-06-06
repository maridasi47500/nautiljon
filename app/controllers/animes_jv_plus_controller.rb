class AnimesJvPlusController < ApplicationController
  before_action :set_animes_jv_plu, only: %i[ show edit update destroy ]

  # GET /animes_jv_plus or /animes_jv_plus.json
  def index
    @animes_jv_plus = AnimesJvPlu.all
  end

  # GET /animes_jv_plus/1 or /animes_jv_plus/1.json
  def show
  end

  # GET /animes_jv_plus/new
  def new
    @animes_jv_plu = AnimesJvPlu.new
  end

  # GET /animes_jv_plus/1/edit
  def edit
  end

  # POST /animes_jv_plus or /animes_jv_plus.json
  def create
    @animes_jv_plu = AnimesJvPlu.new(animes_jv_plu_params)

    respond_to do |format|
      if @animes_jv_plu.save
        format.html { redirect_to animes_jv_plu_url(@animes_jv_plu), notice: "Animes jv plu was successfully created." }
        format.json { render :show, status: :created, location: @animes_jv_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_jv_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_jv_plus/1 or /animes_jv_plus/1.json
  def update
    respond_to do |format|
      if @animes_jv_plu.update(animes_jv_plu_params)
        format.html { redirect_to animes_jv_plu_url(@animes_jv_plu), notice: "Animes jv plu was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_jv_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_jv_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_jv_plus/1 or /animes_jv_plus/1.json
  def destroy
    @animes_jv_plu.destroy!

    respond_to do |format|
      format.html { redirect_to animes_jv_plus_url, notice: "Animes jv plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_jv_plu
      @animes_jv_plu = AnimesJvPlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_jv_plu_params
      params.require(:animes_jv_plu).permit(:name)
    end
end
