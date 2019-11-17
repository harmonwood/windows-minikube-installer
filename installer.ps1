# paramaters
$chocoExe = "choco"
$dockerExe = "docker"
$miniKubeExe = "minikube"

# Install Choco
$choco = Get-Command $chocoExe 2>$null
if ($choco -eq $null)
{
	Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
	Restart-Computer
}

# Install Docker
$docker = Get-Command $dockerExe 2>$null
if ($docker -eq $null)
{
	choco install docker-toolbox -y
	Restart-Computer
}

# Install miniKube
$miniKube = Get-Command $miniKubeExe 2>$null
if ($miniKube -eq $null)
{
	choco install minikube -y
	Restart-Computer
}

Write-Host "MiniKube installed you may now run it!"
