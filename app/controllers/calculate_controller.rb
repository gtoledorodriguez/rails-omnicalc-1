class CalculateController < ApplicationController
  def square_new
    render({ template: "calculator_templates/square_new" })
  end

  def square_result
    @number = params.fetch("number")
    if @number.include? "."
      @number = @number.to_f
    else
      @number = @number.to_i
    end
    @square = @number ** 2
    render({ template: "calculator_templates/square_result" })
  end

  def square_root_new
    render({ template: "calculator_templates/square_root_new" })
  end

  def square_root_result
    @number = params.fetch("number")
    if @number.include? "."
      @number = @number.to_f
    else
      @number = @number.to_i
    end
    @square_root = Math.sqrt(@number)
    render({ template: "calculator_templates/square_root_result" })
  end

  def payment_new
    render({ template: "calculator_templates/payment_new" })
  end

  def payment_result
    @apr = params.fetch("apr").to_f
    @years = params.fetch("years").to_i
    @pv = params.fetch("pv").to_f

    r = (@apr / 100) / 12
    n = @years * 12

    numerator = r * @pv
    denominator = 1 - (1 + r) ** (-n)
    @payment = numerator / denominator

    @apr = @apr.to_fs(:percentage, { :precision => 4 })
    @pv = @pv.to_fs(:currency)
    @payment = @payment.to_fs(:currency)
    render({ template: "calculator_templates/payment_result" })
  end

  def random_new
    render({ template: "calculator_templates/random_new" })
  end

  def random_result
    @min = params.fetch("min").to_f
    @max = params.fetch("max").to_f
    @rand_num = rand(@min..@max)
    render({ template: "calculator_templates/random_result" })
  end
end
