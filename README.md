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
Acesse o seu Ubuntu Server via terminal e execute os comandos abaixo para garantir que tudo esteja atualizado e instalar o script abaixo:

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install docker.io docker-compose -y
sudo systemctl enable --now docker
