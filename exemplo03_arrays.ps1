# script que usa Array
# Comando para limpar a tela
Clear-Host

# Preenchendo um Array com servidores do googleDNS
$google_dns = @("8.8.8.8", "8.8.4.4")
$total_dns = $google_dns.Count
Write-Host Pigando todos os $total_dns DNS do Google
Test-Connection $google_dns -Count 1
sleep 4
Write-Host Fim!




#fim