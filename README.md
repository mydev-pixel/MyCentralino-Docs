# MyCentralino API Documentation

Documentazione ufficiale delle API di MyCentralino realizzata con Mintlify.

## 🚀 Come usare questa documentazione

### Sviluppo locale

Per vedere la documentazione in locale:

```bash
npx mintlify dev
```

La documentazione sarà disponibile su `http://localhost:3000`

### Deploy su Mintlify

1. Connetti il tuo repository GitHub a Mintlify
2. Mintlify farà il deploy automatico ad ogni push

Oppure usa la CLI di Mintlify:

```bash
mintlify deploy
```

## 📁 Struttura del progetto

```
mycentralino-docs/
├── docs.json           # Configurazione principale
├── index.mdx          # Homepage/Introduzione
├── favicon.svg        # Favicon del sito
├── logo/              # Logo del brand
│   ├── light.svg      # Logo per tema chiaro
│   └── dark.svg       # Logo per tema scuro
├── images/            # Immagini per la documentazione
└── api-reference/     # Documentazione delle API (da creare)
```

## ✏️ Prossime pagine da creare

- [ ] Guida Quick Start (quickstart.mdx)
- [ ] Autenticazione (authentication.mdx)
- [ ] API Reference
  - [ ] Gestione PBX
  - [ ] Chiamate VoIP
  - [ ] WhatsApp Integration
  - [ ] Webhook
- [ ] Esempi di codice
- [ ] SDK e librerie

## 🎨 Personalizzazione

### Colori del tema

I colori sono definiti in `docs.json`:
- Primary: `#16A34A` (verde)
- Light: `#07C983` (verde chiaro)
- Dark: `#15803D` (verde scuro)

### Logo

Sostituisci i file in `/logo/` con i tuoi logo aziendali:
- `light.svg` - per tema chiaro
- `dark.svg` - per tema scuro

### Favicon

Sostituisci `favicon.svg` con la tua favicon.

## 📖 Documentazione Mintlify

Per maggiori informazioni su come personalizzare la documentazione:
- [Mintlify Documentation](https://mintlify.com/docs)
- [Mintlify Components](https://mintlify.com/docs/components)

## 🔗 Link utili

- [MyCentralino](https://mycentralino.it)
- [Dashboard](https://mycentralino.it/dashboard)
- [Supporto](https://mycentralino.it/contatti)

---

**Nota:** Questa è la versione iniziale pulita della documentazione. 
Le pagine verranno aggiunte progressivamente.
