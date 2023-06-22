require 'net/http'

req = Net::HTTP::Post.new("/api/users") #Cria uma requisição POST para o caminho /api/users

req.set_form_data({ name:'Natalia', job:'Dev' })
#Define os dados do formulário

response = Net::HTTP.start('reqres.in', use_ssl: true) do |https|
    https.request(req) #Faz a requisição POST
end

puts response.code #Imprime o código de resposta da requisição
puts response.message #Imprime a mensagem de resposta da requisição
puts response.body #Imprime o corpo da resposta da requisição
