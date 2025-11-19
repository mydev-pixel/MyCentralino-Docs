#!/bin/bash

echo "🚀 MyCentralino API Documentation - Setup"
echo "=========================================="
echo ""

# Verifica se Mintlify è installato
if ! command -v mintlify &> /dev/null
then
    echo "📦 Mintlify CLI non trovato. Installazione in corso..."
    npm install -g mintlify
else
    echo "✅ Mintlify CLI già installato"
fi

echo ""
echo "✨ Setup completato!"
echo ""
echo "Per avviare il server di sviluppo:"
echo "  npx mintlify dev"
echo ""
echo "Oppure:"
echo "  mintlify dev"
echo ""
echo "La documentazione sarà disponibile su http://localhost:3000"
echo ""
