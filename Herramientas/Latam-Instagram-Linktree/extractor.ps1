# Cambiar la política de ejecución a RemoteSigned para permitir la ejecución de scripts locales no firmados
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force

# Definir la URL de la página web
$url = "https://linktr.ee/latamgrouph"  # Cambia esta URL por la que quieras analizar

# Crear un objeto web para obtener el contenido HTML
$webContent = Invoke-WebRequest -Uri $url

# Extraer todos los enlaces del HTML
$links = $webContent.Links | Select-Object -ExpandProperty href

# Guardar los enlaces en un archivo de texto
$links | Out-File -FilePath "enlaces.txt"

# Mostrar los enlaces en la consola
$links

# Opcional: Si deseas restaurar la política de ejecución a "Restricted" (la predeterminada), descomenta la siguiente línea
# Set-ExecutionPolicy -ExecutionPolicy Restricted -Force
