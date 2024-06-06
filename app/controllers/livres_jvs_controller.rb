class LivresJvsController < ApplicationController
  before_action :set__livres_jv, only: %i[ show edit update destroy ]

  # GET /_livres_jvs or /_livres_jvs.json
  def index
    @_livres_jvs = LivresJv.all
  end

  # GET /_livres_jvs/1 or /_livres_jvs/1.json
  def show
  end

  # GET /_livres_jvs/new
  def new
    @_livres_jv = LivresJv.new
  end

  # GET /_livres_jvs/1/edit
  def edit
  end

  # POST /_livres_jvs or /_livres_jvs.json
  def create
    @_livres_jv = LivresJv.new(_livres_jv_params)

    respond_to do |format|
      if @_livres_jv.save
        format.html { redirect_to livres_jv_url(@_livres_jv), notice: "Livres jv was successfully created." }
        format.json { render :show, status: :created, location: @_livres_jv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_jvs/1 or /_livres_jvs/1.json
  def update
    respond_to do |format|
      if @_livres_jv.update(_livres_jv_params)
        format.html { redirect_to livres_jv_url(@_livres_jv), notice: "Livres jv was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_jv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_jvs/1 or /_livres_jvs/1.json
  def destroy
    @_livres_jv.destroy!

    respond_to do |format|
      format.html { redirect_to livres_jvs_url, notice: "Livres jv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_jv
      @_livres_jv = LivresJv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_jv_params
      params.require(:livres_jv).permit(:name)
    end
end
