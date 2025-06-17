# Cambiar la pol�tica de ejecuci�n a RemoteSigned para permitir la ejecuci�n de scripts locales no firmados
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force

# Definir la URL de la p�gina web
$url = "https://linktr.ee/latamgrouph"  # Cambia esta URL por la que quieras analizar

# Crear un objeto web para obtener el contenido HTML
$webContent = Invoke-WebRequest -Uri $url

# Extraer todos los enlaces del HTML
$links = $webContent.Links | Select-Object -ExpandProperty href

# Guardar los enlaces en un archivo de texto
$links | Out-File -FilePath "enlaces.txt"

# Mostrar los enlaces en la consola
$links

# Opcional: Si deseas restaurar la pol�tica de ejecuci�n a "Restricted" (la predeterminada), descomenta la siguiente l�nea
# Set-ExecutionPolicy -ExecutionPolicy Restricted -Force
