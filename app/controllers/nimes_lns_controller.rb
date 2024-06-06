class AnimesLnsController < ApplicationController
  before_action :set_animes_ln, only: %i[ show edit update destroy ]

  # GET /animes_lns or /animes_lns.json
  def index
    @animes_lns = AnimesLn.all
  end

  # GET /animes_lns/1 or /animes_lns/1.json
  def show
  end

  # GET /animes_lns/new
  def new
    @animes_ln = AnimesLn.new
  end

  # GET /animes_lns/1/edit
  def edit
  end

  # POST /animes_lns or /animes_lns.json
  def create
    @animes_ln = AnimesLn.new(animes_ln_params)

    respond_to do |format|
      if @animes_ln.save
        format.html { redirect_to animes_ln_url(@animes_ln), notice: "Animes ln was successfully created." }
        format.json { render :show, status: :created, location: @animes_ln }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_lns/1 or /animes_lns/1.json
  def update
    respond_to do |format|
      if @animes_ln.update(animes_ln_params)
        format.html { redirect_to animes_ln_url(@animes_ln), notice: "Animes ln was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_ln }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_lns/1 or /animes_lns/1.json
  def destroy
    @animes_ln.destroy!

    respond_to do |format|
      format.html { redirect_to animes_lns_url, notice: "Animes ln was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_ln
      @animes_ln = AnimesLn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_ln_params
      params.require(:animes_ln).permit(:name)
    end
end
