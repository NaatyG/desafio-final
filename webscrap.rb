#Instalar NokoGiri
#gem install nokogiri

require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('example.com', 443) #443 é a porta padrão para HTTPS
https.use_ssl = true #Habilita o uso de SSL

response = https.get('/')

doc = Nokogiri::HTML(response.body) #Cria um objeto Nokogiri com o corpo da resposta da requisição
h1 = doc.at('p') #Busca a primeira tag h1 do documento
puts h1.content #Imprime o conteúdo da tag h1