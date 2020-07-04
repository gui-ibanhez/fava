class ExpenseKindsController < ApplicationController
  before_action :set_expense_kind, only: [:show, :edit, :update, :destroy]

  # GET /expense_kinds
  # GET /expense_kinds.json
  def index
    @expense_kinds = ExpenseKind.all
  end

  # GET /expense_kinds/1
  # GET /expense_kinds/1.json
  def show
  end

  # GET /expense_kinds/new
  def new
    @expense_kind = ExpenseKind.new
  end

  # GET /expense_kinds/1/edit
  def edit
  end

  # POST /expense_kinds
  # POST /expense_kinds.json
  def create
    @expense_kind = ExpenseKind.new(expense_kind_params)

    respond_to do |format|
      if @expense_kind.save
        format.html { redirect_to @expense_kind, notice: 'Expense kind was successfully created.' }
        format.json { render :show, status: :created, location: @expense_kind }
      else
        format.html { render :new }
        format.json { render json: @expense_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expense_kinds/1
  # PATCH/PUT /expense_kinds/1.json
  def update
    respond_to do |format|
      if @expense_kind.update(expense_kind_params)
        format.html { redirect_to @expense_kind, notice: 'Expense kind was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense_kind }
      else
        format.html { render :edit }
        format.json { render json: @expense_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expense_kinds/1
  # DELETE /expense_kinds/1.json
  def destroy
    @expense_kind.destroy
    respond_to do |format|
      format.html { redirect_to expense_kinds_url, notice: 'Expense kind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense_kind
      @expense_kind = ExpenseKind.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def expense_kind_params
      params.require(:expense_kind).permit(:name)
    end
end
