class BrevesLnsController < ApplicationController
  before_action :set__breves_ln, only: %i[ show edit update destroy ]

  # GET /_breves_lns or /_breves_lns.json
  def index
    @_breves_lns = BrevesLn.all
  end

  # GET /_breves_lns/1 or /_breves_lns/1.json
  def show
  end

  # GET /_breves_lns/new
  def new
    @_breves_ln = BrevesLn.new
  end

  # GET /_breves_lns/1/edit
  def edit
  end

  # POST /_breves_lns or /_breves_lns.json
  def create
    @_breves_ln = BrevesLn.new(_breves_ln_params)

    respond_to do |format|
      if @_breves_ln.save
        format.html { redirect_to breves_ln_url(@_breves_ln), notice: "Breves ln was successfully created." }
        format.json { render :show, status: :created, location: @_breves_ln }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_lns/1 or /_breves_lns/1.json
  def update
    respond_to do |format|
      if @_breves_ln.update(_breves_ln_params)
        format.html { redirect_to breves_ln_url(@_breves_ln), notice: "Breves ln was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_ln }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_lns/1 or /_breves_lns/1.json
  def destroy
    @_breves_ln.destroy!

    respond_to do |format|
      format.html { redirect_to breves_lns_url, notice: "Breves ln was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_ln
      @_breves_ln = BrevesLn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_ln_params
      params.require(:breves_ln).permit(:name)
    end
end
