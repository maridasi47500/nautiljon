class LivresLnsController < ApplicationController
  before_action :set__livres_ln, only: %i[ show edit update destroy ]

  # GET /_livres_lns or /_livres_lns.json
  def index
    @_livres_lns = LivresLn.all
  end

  # GET /_livres_lns/1 or /_livres_lns/1.json
  def show
  end

  # GET /_livres_lns/new
  def new
    @_livres_ln = LivresLn.new
  end

  # GET /_livres_lns/1/edit
  def edit
  end

  # POST /_livres_lns or /_livres_lns.json
  def create
    @_livres_ln = LivresLn.new(_livres_ln_params)

    respond_to do |format|
      if @_livres_ln.save
        format.html { redirect_to livres_ln_url(@_livres_ln), notice: "Livres ln was successfully created." }
        format.json { render :show, status: :created, location: @_livres_ln }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_lns/1 or /_livres_lns/1.json
  def update
    respond_to do |format|
      if @_livres_ln.update(_livres_ln_params)
        format.html { redirect_to livres_ln_url(@_livres_ln), notice: "Livres ln was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_ln }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_lns/1 or /_livres_lns/1.json
  def destroy
    @_livres_ln.destroy!

    respond_to do |format|
      format.html { redirect_to livres_lns_url, notice: "Livres ln was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_ln
      @_livres_ln = LivresLn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_ln_params
      params.require(:livres_ln).permit(:name)
    end
end
