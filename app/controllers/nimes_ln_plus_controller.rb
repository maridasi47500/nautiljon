class AnimesLnPlusController < ApplicationController
  before_action :set_animes_ln_plu, only: %i[ show edit update destroy ]

  # GET /animes_ln_plus or /animes_ln_plus.json
  def index
    @animes_ln_plus = AnimesLnPlu.all
  end

  # GET /animes_ln_plus/1 or /animes_ln_plus/1.json
  def show
  end

  # GET /animes_ln_plus/new
  def new
    @animes_ln_plu = AnimesLnPlu.new
  end

  # GET /animes_ln_plus/1/edit
  def edit
  end

  # POST /animes_ln_plus or /animes_ln_plus.json
  def create
    @animes_ln_plu = AnimesLnPlu.new(animes_ln_plu_params)

    respond_to do |format|
      if @animes_ln_plu.save
        format.html { redirect_to animes_ln_plu_url(@animes_ln_plu), notice: "Animes ln plu was successfully created." }
        format.json { render :show, status: :created, location: @animes_ln_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_ln_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_ln_plus/1 or /animes_ln_plus/1.json
  def update
    respond_to do |format|
      if @animes_ln_plu.update(animes_ln_plu_params)
        format.html { redirect_to animes_ln_plu_url(@animes_ln_plu), notice: "Animes ln plu was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_ln_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_ln_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_ln_plus/1 or /animes_ln_plus/1.json
  def destroy
    @animes_ln_plu.destroy!

    respond_to do |format|
      format.html { redirect_to animes_ln_plus_url, notice: "Animes ln plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_ln_plu
      @animes_ln_plu = AnimesLnPlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_ln_plu_params
      params.require(:animes_ln_plu).permit(:name)
    end
end
