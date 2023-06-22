#Utilizar o site https://regres.in
#Ele serve para testar requisições HTTP
#O site possui uma API que retorna dados em JSON

require 'net/http'

https = Net::HTTP.new('reqres.in', 443)
#443 é a porta padrão para HTTPS

https.use_ssl = true #Habilita o uso de SSL

response = https.get("/api/users")
#Faz uma requisição GET para o caminho /api/users

puts response.code #Imprime o código de resposta da requisição
puts response.message #Imprime a mensagem de resposta da requisição
puts response.body #Imprime o corpo da resposta da requisição