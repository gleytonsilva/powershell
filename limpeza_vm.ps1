# Defina o caminho da pasta onde os arquivos serão excluídos
$folderPath = "C:\Caminho\para\a\pasta"

# Obtenha a lista de arquivos na pasta com a extensão .txt
$files = Get-ChildItem -Path $folderPath -Filter "*.txt"

# Exclua cada arquivo da lista
foreach ($file in $files) {
    $filePath = Join-Path -Path $folderPath -ChildPath $file
    Remove-Item -Path $filePath -Force
}