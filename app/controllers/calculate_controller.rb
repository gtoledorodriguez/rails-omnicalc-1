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
end
