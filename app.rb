require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end
  get '/square/:number' do
    @number = params[:number]
    @square_number = @number.to_i * @number.to_i
    "#{@square_number}"
  end
  get '/say/:number/:phrase' do
    my_string = ''
    @number = params[:number]
    @phrase = params[:phrase]
    @number.to_i.times do 
        my_string += @phrase
    end
        my_string
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case params[:operation]
    when 'add'
      (@num1+@num2).to_s
    when 'subtract'
      (@num2 - @num1).to_s
    when 'multiply'
      (@num1 * @num2).to_s
    when 'divide'
      (@num1/@num2).to_s
    else
      "Can't perform this operation"
    end
  end




end