######################################################################################
###
###  Title         : ChecaServicos 
###  Programmed by : Gleyton Rezende Silva
###  Date          : Maio, 2023
###
###  Script para checar os servicos ativos e inativos
###  Descrição: Definimos a variável $statusServico dentro do loop foreach para cada serviço individualmente
###  com base no status do serviço, a cor do texto é definida como "Red" (vermelho) se estiver parado e 
###  "Green" (verde) se estiver em execução. 
###  Em seguida, o nome do serviço é exibido com a cor apropriada usando Write-Host.
###
######################################################################################


# Obter lista de serviços
$services = Get-Service

# Iterar sobre cada serviço
foreach ($service in $services) {

#captura hora inicial de todo o processo
$StartingTime = Get-Date -Format T

#Obter Nome máquina
$nomehost = $env:COMPUTERNAME.ToUpper()

#captura hora inicial
$StartingTime = Get-Date -Format T
    
# Obter o nome do serviço - $service.Name - $service.Status - $service.DisplayName
$nomeServico = $service.Name

# Obter o status do serviço
$statusServico = $service.Status

# Definir a cor baseado no status do serviço
    if ($statusServico -eq 'Stopped') {
        $corTexto = 'Red'
        $servico = 'PARADO'
    } else {
        $corTexto = 'Green'
        $servico = 'EXECUÇÃO'
    }

# Exibir o nome do serviço com a cor adequada
Write-Host -ForegroundColor $corTexto "SERVIÇO: $nomeServico - STATUS: $servico"

}

# Caminho do arquivo de log em que as informações serão registradas
$caminhoLog = "C:\Users\gleyton.silva\Desktop\Scripts\Log.txt"

# Escrever as informações dos serviços no arquivo de log ao final do arquivo caso ela exista
$serviceInfo | Out-File -FilePath $caminhoLog

# Exibir mensagem de conclusão
Write-Host ""
Write-Host ""
Write-Host "========== As informações dos serviços foram registradas no arquivo de log. =========="
Write-Host ""
Write-Host ""
Write-Host -ForegroundColor Green "Caminho: $caminhoLog"
Write-Host ""
Write-Host ""