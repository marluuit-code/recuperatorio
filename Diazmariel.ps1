
# Díaz Mariel Elizabeth
# Recuperatorio

$destino = "8.8.8.8"

for ($i = 1; $i -le 3; $i++) {
$fecha = Get-Date -Format "dd/MM/yyyy HH:mm:ss"
Write-Host "Intento $i - $fecha"

if ($i % 2 -eq 0) {
Write-Host "El intento es PAR"
}
else {
Write-Host "El intento es IMPAR"
}

Write-Host "Comprobando 8.8.8.8..."
$respuesta = Test-Connection -ComputerName 8.8.8.8 -Count 1 -Quiet

if ($respuesta) {
Write-Host "Conexión exitosa"
}
else {
Write-Host "Sin respuesta"
}
Write-Host "---"
}

Write-Host "El monitoreo ha concluido con éxito."

