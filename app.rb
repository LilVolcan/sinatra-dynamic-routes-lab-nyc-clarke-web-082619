require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

    get '/reversename/:name' do 
      params[:name].reverse
    end 

    get '/square/:number' do 
      number = params[:number].to_i
      "#{number**2}"
    end 

    get '/say/:number/:phrase' do 
      string = ''
      (params[:number].to_i).times {string << params[:phrase]}
      string
    end 

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end 

    get '/:operation/:number1/:number2' do
      operation = params[:operation] 
      number1 = params[:number1].to_i 
      number2 = params[:number2].to_i 

      if operation == 'add'
        answer = (number1 + number2) 
      elsif operation == 'subtract'
        answer = (number1 - number2)
      elsif operation == 'multiply'
        answer = (number1 * number2)
      elsif operation == 'divide'
        answer = (number1 / number2)
      end 
      answer.to_s
    end 


end