# Install

`Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/harmonwood/windows-minikube-installer/master/install.ps1'))`

Re-run this command everytime it reboots until it tells you it has completed.


# Start MiniKube
`minikube start --kubernetes-version="v1.16.0" --vm-driver="virtualbox"`