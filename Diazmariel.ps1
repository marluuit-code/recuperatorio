
# Díaz Mariel Elizabeth
# Recuperatorio

$destino = "8.8.8.8"

for ($i = 1; $i -le 3; $i++) {
    $fecha = Get-Date -Format "dd/MM/yyyy HH:mm:ss"
    
    Write-Host "Intento $i de 3 "
    Write-Host "Fecha y hora: $fecha"
    
        if ($i % 2 -eq 0) {
        Write-Host "El intento $i es PAR"
    }
    else {
        Write-Host "El intento $i es IMPAR"
    }
    
    
    Write-Host "Comprobando $destino ..."
    $respuesta = Test-Connection -ComputerName $destino -Count 1 -Quiet
    
    if ($respuesta) {
        Write-Host " Conexión exitosa"
    }
    else {
        Write-Host " Sin respuesta"
    }
}

Write-Host " El monitoreo ha concluido con éxito."

