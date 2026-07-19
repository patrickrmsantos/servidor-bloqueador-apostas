# Bloqueio Nacional de Sites de Apostas com Pi-hole

Este projeto foi desenvolvido como uma atividade extensionista voltada à segurança digital e bem-estar social. O objetivo é fornecer uma solução simples, robusta e escalável em nível nacional para bloquear o acesso a plataformas de apostas online (bets) em redes domésticas e empresariais, utilizando o Pi-hole dentro de um servidor Ubuntu.

## 🚀 Tecnologias Utilizadas
* **Ubuntu Server** (Sistema Operacional Base)
* **Pi-hole** (Servidor DNS e Bloqueador de Anúncios/Sites)

## 📋 Pré-requisitos
* Uma máquina ou VM com Ubuntu Server instalado.
* Acesso root ou privilégios `sudo`.

## 🔧 Passo a Passo de Instalação e Configuração

### Passo 1: Atualizar o Sistema e Instalar o Pi-hole
Acesse o seu Ubuntu Server via terminal e execute os comandos abaixo para garantir que tudo esteja atualizado utilizando o script abaixo:

```bash
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

```

### Passo 2: Acessar o painel web do Pi-hole
Acesse o painel web do Pi-hole no navegador utilizando os seguintes caminhos:

* http://pi.hole/admin/ (quando utilizando o  Pi-hole como um servidor DNS)
* http://<ENDERECO_IP_DO_PIHOLE>/admin/

### Passo 3 Testar:
Tente acessar algum site da lista de bloqueios.

