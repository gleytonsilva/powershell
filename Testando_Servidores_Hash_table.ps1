# Uma hash table, também conhecida como tabela hash, é uma estrutura de dados no PowerShell que permite 
# armazenar e acessar pares de chave-valor de forma eficiente. É semelhante a um dicionário em outras 
# linguagens de programação.

# Limpando a tela
Clear-Host

$servidores = [ordered] @{Server1 = "127.0.0.1";Server2 = "127.0.0.2";Server3 = "127.0.0.3"}
$servidores

# Adicionando Servidores
$servidores["Server4"] = "127.0.0.4"

# Removendo Servidores
$servidores.Remove("Server4")

# Testando conexão com servidor 1
Test-Connection $servidores.Server1

# Exibindo todos os valores
$servidores.Values

#fim