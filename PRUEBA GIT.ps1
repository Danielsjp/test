

# Configurar usuario y editor
git config --global user.name "daniel.sanchez"
git config --global user.email "sjp.daniel@gmail.com"
git config --global core.editor "code --wait"

# Verificar si es un repositorio de Git
if (Test-Path ".git") {
    Write-Output "Repositorio ya inicializado."
} else {
    Write-Output "Inicializando repositorio..."
    git init
}

# Verificar si el remoto ya está configurado
$remoteUrl = git remote get-url origin 2>$null

if ($remoteUrl -eq "https://github.com/Danielsjp/test.git") {
    Write-Output "El remoto ya está configurado. Solo agregando cambios y haciendo commit..."
} else {
    Write-Output "Configurando el remoto..."
    git remote add origin https://github.com/Danielsjp/test.git
    git branch -M main
}

# Agregar, hacer commit y push
git add .
git commit -m "test"
git push 
