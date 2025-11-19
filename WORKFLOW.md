# Come creare la documentazione pagina per pagina con Claude

Questa è una guida per procedere nella creazione della documentazione delle API di MyCentralino insieme a Claude.

## 🎯 Workflow consigliato

### 1. Identifica la pagina da creare
Decidi quale sezione della documentazione vuoi creare:
- Guida Quick Start
- Autenticazione
- Endpoint specifico (es. "Gestione Interni")
- Webhook
- Esempi di codice

### 2. Raccogli le informazioni
Prima di chiedere a Claude di creare la pagina, prepara:
- Nome e scopo dell'endpoint/sezione
- Parametri richiesti/opzionali
- Esempi di request/response
- Codici di errore
- Note particolari

### 3. Chiedi a Claude di creare la pagina

Esempio di richiesta:

```
Voglio creare la pagina per l'endpoint GET /api/v1/extensions 
che restituisce la lista degli interni del PBX.

Parametri:
- page (opzionale): numero pagina
- limit (opzionale): elementi per pagina (default 20)

Response esempio:
{
  "status": "success",
  "data": [
    {
      "id": 101,
      "name": "Ufficio Commerciale",
      "email": "commerciale@azienda.it",
      "status": "active"
    }
  ],
  "pagination": {
    "current_page": 1,
    "total_pages": 5,
    "total_items": 87
  }
}
```

### 4. Claude crea la pagina
Claude creerà:
- Il file `.mdx` con la documentazione
- Aggiornerà `docs.json` per includere la nuova pagina nel menu
- Formattazione con componenti Mintlify (Card, CodeGroup, etc.)

### 5. Rivedi e itera
- Controlla la pagina creata
- Chiedi modifiche se necessario
- Procedi con la pagina successiva

## 📋 Template di richiesta

Usa questo template quando vuoi creare una nuova pagina:

```
Crea una nuova pagina per [NOME SEZIONE/ENDPOINT]

Descrizione:
[Breve descrizione di cosa fa]

Dettagli tecnici:
- Metodo: [GET/POST/PUT/DELETE]
- URL: [/api/v1/...]
- Auth: [Bearer Token / API Key]

Parametri:
[Lista parametri]

Response:
[Esempio JSON]

Errori comuni:
[Se ci sono errori specifici da documentare]

Note:
[Eventuali note o casi particolari]
```

## 🗂️ Ordine consigliato delle pagine

1. ✅ **Introduzione** (già fatto)
2. **Quick Start** - Come iniziare in 5 minuti
3. **Autenticazione** - Come autenticarsi alle API
4. **API Reference** - Endpoint per endpoint:
   - Gestione PBX
   - Interni (Extensions)
   - Code (Queues)
   - IVR
   - Chiamate (Calls)
   - WhatsApp
   - Webhook
5. **Esempi pratici** - Casi d'uso comuni
6. **SDK e librerie** - Se disponibili
7. **Errori e troubleshooting**
8. **Rate limiting e best practices**

## 💡 Tips

- **Una pagina alla volta**: Meglio fare pagine complete una per volta
- **Esempi reali**: Usa dati realistici negli esempi
- **Testa sempre**: Dopo aver creato una pagina, testala localmente con `mintlify dev`
- **Consistenza**: Mantieni lo stesso stile su tutte le pagine
- **Feedback**: Se qualcosa non va, dillo a Claude per correggere

## 🚀 Comandi utili

```bash
# Avvia il server di sviluppo locale
npx mintlify dev

# Valida la configurazione
npx mintlify validate

# Deploy (se hai configurato Mintlify)
mintlify deploy
```

---

**Pronto per iniziare?** Dimmi quale pagina vuoi creare per prima! 🎉
