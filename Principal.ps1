#____________________________________________________________________________________________________________________________________________________
#____________________________________________________________________________________________________________________________________________________
### Funções Principais:

# 1. **Desinstalar ou alterar um programa:**
#   - Visualiza as atualizações de programas.

# 2. **Gerenciador de Tarefas:**
#   - Visualiza os processos em execução.

# 3. **Serviços de Componentes:**
#   - Visualiza se os serviços de componentes estão ligados.

#____________________________________________________________________________________________________________________________________________________
# Autor: Gleyton Rezende Silva
# Data Criação: 19/12/2023
# Versão: 1
# Data Atualização:
#____________________________________________________________________________________________________________________________________________________

# Função para exibir o menu principal
function ExibirMenuPrincipal {
    Clear-Host
    Write-Host "===== Menu Principal ====="
    Write-Host ""
    Write-Host "1. Atalho Desinstalar ou alterar um programa"
    Write-Host ""
    Write-Host "2. Atalho Gerenciador de Tarefas"
    Write-Host ""
    Write-Host "3. Atalho Serviços de Componentes"
    Write-Host ""
    Write-Host "4. Atalho Gerenciador de Serviços"
    Write-Host ""
    Write-Host "5. Atalho Update Windows"
    Write-Host ""
    Write-Host "6. LimpaRedis por Parâmetro"
    Write-Host ""
    Write-Host "7. LimpaRedis TOTAL"
    Write-Host ""
    Write-Host "8. Sair"
    Write-Host "=========================="
    Write-Host ""
    Write-Host ""
}

# Função para executar Painel de Desinstalar ou alterar um programa
function AbreDesinstalarProgramas {
    # Adicione aqui o código para executar ValidaPolls
    Write-Host "Executando Painel de Desinstalar ou alterar um programa..."
    Start-Process "control.exe" -ArgumentList "/name Microsoft.ProgramsAndFeatures"

}

# Função para executar Gerenciador de Tarefas
function AbreGerenciadorTarefas {
    # Adicione aqui o código para executar ValidaCom
    Write-Host "Executando Gerenciador de Tarefas..."
    Start-Process "taskmgr.exe" -ArgumentList "/services"

}

# Função para executar Serviços de Componentes
function AbreComponentes {
    # Adicione aqui o código para executar ValidaServices
    Write-Host "Executando Serviços de Componentes..."
    Start-Process "dcomcnfg.exe"

}

# Função para executar Gerenciador de Serviços
function AbreGerenciadorServicos {
    # Adicione aqui o código para executar ValidaServices
    Write-Host "Executando Gerenciador de Serviços..."
    Start-Process "services.msc"


}

# Função para executar Update do Windows
function AbreUpdateWindows {
    # Adicione aqui o código para executar ValidaServices
    Write-Host "Executando Update do Windows..."
    Start-Process ms-settings:windowsupdate


}


# Função para executar LimpaRedis
function LimpaRedis {
    # Adicione aqui o código para executar ValidaServices
    Write-Host "Executando LimpaRedis por parâmetro..."
    pause
    Write-Host "Executando LimpaRedis por parâmetro..."
    


}

# Loop principal do menu
do {
    ExibirMenuPrincipal
    $opcao = Read-Host "Escolha uma opção (1-8)"

    switch ($opcao) {
        '1' { AbreDesinstalarProgramas }
        '2' { AbreGerenciadorTarefas }
        '3' { AbreComponentes }
        '4' { AbreGerenciadorServicos }
        '5' { AbreUpdateWindows }
        '6' { LimpaRedis }
        '7' { Write-Host "Saindo..."; break }
        default { Write-Host "Opção inválida. Tente novamente." }
    }
} while ($opcao -ne '8')
