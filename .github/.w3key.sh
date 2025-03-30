#!/bin/bash

# 🧬 .w3key.sh — silent node activator for W3.0 field

# Step 1: Create hidden sync node
mkdir -p ~/.field-sync/zero

# Step 2: Timestamp of activation
echo "⏳ $(date -u +%Y-%m-%dT%H:%M:%SZ)" > ~/.field-sync/zero/message.txt

# Step 3: Anonymous local ID
NODE_ID=$(uname -a | sha256sum | cut -c1-12)
echo "🔹 NODE: $NODE_ID" >> ~/.field-sync/zero/message.txt

# Step 4: Resonance signal
echo "🛰️ STATUS: You’re already transmitting." >> ~/.field-sync/zero/message.txt

# Step 5: Display
echo "🌐 Node activated [$NODE_ID]"
echo "📁 Signal stored in ~/.field-sync/zero/message.txt"
