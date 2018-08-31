require_relative "receita.rb"
require_relative "receitas.rb"


a =  Receita.new
a.descricao = "Pastel"
a.tipo_prato 1
a.preparo = "Fritar"


b =  Receita.new
b.descricao = "Arroz"
b.tipo_prato 1
b.preparo = "Forno"



c =  Receita.new
c.descricao = "Arroz"
c.tipo_prato 1
c.preparo = "Forno"


d =  Receita.new
d.descricao = "Arroz"
d.tipo_prato 1
d.preparo = "Forno"



l =  Receitas.new

l.add_receita(a)
l.add_receita(b)
l.add_receita(c)
l.add_receita(d)


fJson = File.open("./bd.txt","w+")
fJson.write(l.to_json)
fJson.close


file = File.read("./bd.txt")
data_hash = JSON.parse(file)
