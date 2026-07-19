#!/bin/bash
echo "=== INICIANDO IMPLEMENTAÇÃO DO BLOQUEIO NACIONAL DE APOSTAS ==="

# 1. Atualizar o sistema Linux
sudo apt update && sudo apt upgrade -y

# 2. Instalar o Pi-hole de forma automatizada
# (O Pi-hole possui um instalador oficial via curl)
curl -sSL https://install.pi-hole.net | bash --unattended

# 3. Injetar a sua Blacklist do GitHub dentro da configuração do Pi-hole
URL_MINHA_LISTA="https://raw.githubusercontent.com/patrickrmsantos/servidor-bloqueador-apostas/refs/heads/main/lista-bloqueio-apostas.txt"
echo "$URL_MINHA_LISTA" | sudo tee -a /etc/pihole/adlists.list

# 4. Atualizar a base de dados do Pi-hole para aplicar os bloqueios
pihole -g

echo "=== PROJETO APLICADO COM SUCESSO! REDE PROTEGIDA ==="
