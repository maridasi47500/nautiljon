class AnimesAmPlusController < ApplicationController
  before_action :set_animes_am_plu, only: %i[ show edit update destroy ]

  # GET /animes_am_plus or /animes_am_plus.json
  def index
    @animes_am_plus = AnimesAmPlu.all
  end

  # GET /animes_am_plus/1 or /animes_am_plus/1.json
  def show
  end

  # GET /animes_am_plus/new
  def new
    @animes_am_plu = AnimesAmPlu.new
  end

  # GET /animes_am_plus/1/edit
  def edit
  end

  # POST /animes_am_plus or /animes_am_plus.json
  def create
    @animes_am_plu = AnimesAmPlu.new(animes_am_plu_params)

    respond_to do |format|
      if @animes_am_plu.save
        format.html { redirect_to animes_am_plu_url(@animes_am_plu), notice: "Animes am plu was successfully created." }
        format.json { render :show, status: :created, location: @animes_am_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_am_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_am_plus/1 or /animes_am_plus/1.json
  def update
    respond_to do |format|
      if @animes_am_plu.update(animes_am_plu_params)
        format.html { redirect_to animes_am_plu_url(@animes_am_plu), notice: "Animes am plu was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_am_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_am_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_am_plus/1 or /animes_am_plus/1.json
  def destroy
    @animes_am_plu.destroy!

    respond_to do |format|
      format.html { redirect_to animes_am_plus_url, notice: "Animes am plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_am_plu
      @animes_am_plu = AnimesAmPlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_am_plu_params
      params.require(:animes_am_plu).permit(:name)
    end
end
