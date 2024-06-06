class GeneriquesGenericsController < ApplicationController
  before_action :set__generiques_generic, only: %i[ show edit update destroy ]

  # GET /_generiques_generics or /_generiques_generics.json
  def index
    @_generiques_generics = GeneriquesGeneric.all
  end

  # GET /_generiques_generics/1 or /_generiques_generics/1.json
  def show
  end

  # GET /_generiques_generics/new
  def new
    @_generiques_generic = GeneriquesGeneric.new
  end

  # GET /_generiques_generics/1/edit
  def edit
  end

  # POST /_generiques_generics or /_generiques_generics.json
  def create
    @_generiques_generic = GeneriquesGeneric.new(_generiques_generic_params)

    respond_to do |format|
      if @_generiques_generic.save
        format.html { redirect_to _generiques_generic_url(@_generiques_generic), notice: "Generiques generic was successfully created." }
        format.json { render :show, status: :created, location: @_generiques_generic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_generiques_generic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_generiques_generics/1 or /_generiques_generics/1.json
  def update
    respond_to do |format|
      if @_generiques_generic.update(_generiques_generic_params)
        format.html { redirect_to _generiques_generic_url(@_generiques_generic), notice: "Generiques generic was successfully updated." }
        format.json { render :show, status: :ok, location: @_generiques_generic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_generiques_generic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_generiques_generics/1 or /_generiques_generics/1.json
  def destroy
    @_generiques_generic.destroy!

    respond_to do |format|
      format.html { redirect_to _generiques_generics_url, notice: "Generiques generic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__generiques_generic
      @_generiques_generic = GeneriquesGeneric.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _generiques_generic_params
      params.require(:_generiques_generic).permit(:name)
    end
end
