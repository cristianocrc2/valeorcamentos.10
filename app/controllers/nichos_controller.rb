class NichosController < ApplicationController
  before_action :set_nicho, only: [:show, :edit, :update, :destroy]

  # GET /nichos
  # GET /nichos.json
  def index
    @nichos = Nicho.all
  end

  # GET /nichos/1
  # GET /nichos/1.json
  def show
  end

  # GET /nichos/new
  def new
    @nicho = Nicho.new
  end

  # GET /nichos/1/edit
  def edit
  end

  # POST /nichos
  # POST /nichos.json
  def create
    @nicho = Nicho.new(nicho_params)

    respond_to do |format|
      if @nicho.save
        format.html { redirect_to @nicho, notice: 'Nicho was successfully created.' }
        format.json { render :show, status: :created, location: @nicho }
      else
        format.html { render :new }
        format.json { render json: @nicho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nichos/1
  # PATCH/PUT /nichos/1.json
  def update
    respond_to do |format|
      if @nicho.update(nicho_params)
        format.html { redirect_to @nicho, notice: 'Nicho was successfully updated.' }
        format.json { render :show, status: :ok, location: @nicho }
      else
        format.html { render :edit }
        format.json { render json: @nicho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nichos/1
  # DELETE /nichos/1.json
  def destroy
    @nicho.destroy
    respond_to do |format|
      format.html { redirect_to nichos_url, notice: 'Nicho was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nicho
      @nicho = Nicho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nicho_params
      params.require(:nicho).permit(:nicho, :ativo)
    end
end
