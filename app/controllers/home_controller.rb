class HomeController < ApplicationController

  def home_page
    render({:template => "pages/home"})
  end

  def square_num
    render({:template => "pages/square_form"})
  end

  def square_result
    @the_digits = params.fetch("digits").to_f
    @the_result = params.fetch("digits").to_f ** 2
    render({:template => "pages/square_results"})
  end

  def square_root
    render({:template => "pages/square_root"})
  end

  def square_root_results
    @the_digits = params.fetch("digits")
    @the_result = Math.sqrt(params.fetch("digits").to_f)
    render({:template => "pages/square_root_result"})
  end

  def new_payment
    render({:template => "pages/new_payment"})
  end

  def payment_result
    @rate = (params.fetch("user_apr")).to_f 
    @time = (params.fetch("user_years")).to_i
    @loan = (params.fetch("user_pv")).to_f
  
    @rate_i = @rate/100
    @month = 12
    @p = (1-(1+@rate_i/@month)**(-@month*@time))/(@rate_i/@month)
    @payment = (@loan/@p).round(2)
    render({:template => "pages/payment_result"})
  end

  def random_num
    render({:template => "pages/random_num"})
  end

  def random_result
    @first_one = (params.fetch("user_min")).to_f
    @second_one = (params.fetch("user_max")).to_f
    @result = rand(@first_one..@second_one)
    render({:template => "pages/random_result"})
  end
end
