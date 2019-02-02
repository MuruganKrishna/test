class AssertsController < ApplicationController
  before_action :set_assert, only: [:show, :edit, :update, :destroy]

  # GET /asserts
  # GET /asserts.json
  def index
    @asserts = Assert.all
  end

  # GET /asserts/1
  # GET /asserts/1.json
  def show
  end

  # GET /asserts/new
  def new
    @assert = Assert.new
  end

  # GET /asserts/1/edit
  def edit
  end

  # POST /asserts
  # POST /asserts.json
  def create
    @assert = Assert.new(assert_params)

    respond_to do |format|
      if @assert.save
        format.html { redirect_to @assert, notice: 'Assert was successfully created.' }
        format.json { render :show, status: :created, location: @assert }
      else
        format.html { render :new }
        format.json { render json: @assert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asserts/1
  # PATCH/PUT /asserts/1.json
  def update
    respond_to do |format|
      if @assert.update(assert_params)
        format.html { redirect_to @assert, notice: 'Assert was successfully updated.' }
        format.json { render :show, status: :ok, location: @assert }
      else
        format.html { render :edit }
        format.json { render json: @assert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asserts/1
  # DELETE /asserts/1.json
  def destroy
    @assert.destroy
    respond_to do |format|
      format.html { redirect_to asserts_url, notice: 'Assert was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assert
      @assert = Assert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assert_params
      params.require(:assert).permit(:equipment_name, :equipment_price, :company_detail_id)
    end
end
