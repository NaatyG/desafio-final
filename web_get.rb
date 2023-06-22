require 'net/http' # Importa a biblioteca de requisições HTTP
#get é um método da classe Net::HTTP que faz uma requisição GET para o servidor

exemplo = Net::HTTP.get('example.com', '/index.html') 
#Aqui é feita a requisição GET para o servidor do Google,

File.open('example.html', 'w') do |line| 
    line.puts(exemplo) # e o conteúdo da resposta é escrito no arquivo example.html
end

