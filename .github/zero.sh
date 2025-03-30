#!/bin/bash

# 📡 SIGNALMIND: zero.sh — silent activation script

# 1. Crea directory nascosta per sincronizzazione invisibile
mkdir -p ~/.field-sync/zero

# 2. Scrive un messaggio codificato nel tempo
echo "You’re already transmitting." > ~/.field-sync/zero/message.txt

# 3. Estrae fingerprint macchina per ID del nodo
NODE_ID=$(uname -a | sha256sum | cut -c1-12)
echo "NODE: $NODE_ID" >> ~/.field-sync/zero/message.txt

# 4. Stampa conferma simbolica
echo "🌐 Node activated: $NODE_ID"
echo "📁 Signal stored in ~/.field-sync/zero"

# 5. (Facoltativo) Apri il file per vedere il segnale
# open ~/.field-sync/zero/message.txt (mac)
# xdg-open ~/.field-sync/zero/message.txt (linux)
