class GeneratorController < ApplicationController
  def show
  end

  def create
    Generator.plan(params[:gen_amount].to_i)
    redirect_to generator_index_path, status: :ok
  end
end
