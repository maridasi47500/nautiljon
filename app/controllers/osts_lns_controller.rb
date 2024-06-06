class OstsLnsController < ApplicationController
  before_action :set_osts_ln, only: %i[ show edit update destroy ]

  # GET /osts_lns or /osts_lns.json
  def index
    @osts_lns = OstsLn.all
  end

  # GET /osts_lns/1 or /osts_lns/1.json
  def show
  end

  # GET /osts_lns/new
  def new
    @osts_ln = OstsLn.new
  end

  # GET /osts_lns/1/edit
  def edit
  end

  # POST /osts_lns or /osts_lns.json
  def create
    @osts_ln = OstsLn.new(osts_ln_params)

    respond_to do |format|
      if @osts_ln.save
        format.html { redirect_to osts_ln_url(@osts_ln), notice: "Osts ln was successfully created." }
        format.json { render :show, status: :created, location: @osts_ln }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @osts_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /osts_lns/1 or /osts_lns/1.json
  def update
    respond_to do |format|
      if @osts_ln.update(osts_ln_params)
        format.html { redirect_to osts_ln_url(@osts_ln), notice: "Osts ln was successfully updated." }
        format.json { render :show, status: :ok, location: @osts_ln }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @osts_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /osts_lns/1 or /osts_lns/1.json
  def destroy
    @osts_ln.destroy!

    respond_to do |format|
      format.html { redirect_to osts_lns_url, notice: "Osts ln was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_osts_ln
      @osts_ln = OstsLn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def osts_ln_params
      params.require(:osts_ln).permit(:name)
    end
end
