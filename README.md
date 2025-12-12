# 🚀 SUI Workshop

¡Bienvenido al taller de introducción a Sui Blockchain!

**Este es tu punto único de entrada.** Aquí está todo lo que necesitas para comenzar tu viaje en Sui.

---

## 🛠️ Herramientas & Comandos

**📘 Antes de comenzar, mantén esta guía abierta:**

👉 **[Guía de Comandos Esenciales de SUI](https://github.com/Felurianx2/SUI-Comandos-esenciales)**

Allí encontrarás:
- ✅ Cómo instalar Sui CLI
- ✅ Cómo configurar Testnet/Devnet
- ✅ Cómo solicitar tokens del Faucet
- ✅ Todos los comandos que usarás hoy
- ✅ Soluciones para problemas comunes

---

## 📚 Proyectos de Hoy

### 🔥 Módulo 1: Hello Debug
**¡Tu primer código en Move!**

✅ Estructura básica de un módulo
✅ Manipulación de Strings
✅ Pruebas con `debug::print()`
✅ Compilar y ejecutar pruebas

📁 **Carpeta:** `01-hello-debug/` | ⚡ **Comando:** `sui move test`

---

### ⚡ Módulo 2: Hello Sui (Objetos en la Blockchain - 20 min)
**¡Tu primer smart contract de verdad!**

✅ Structs con abilities (`key`, `store`)
✅ Entry functions
✅ Transferencia de objetos
✅ Publicación en testnet

📁 **Carpeta:** `01-hello-sui/` | 🌐 **Comando:** `sui client publish`

---

### 🎨 Módulo 3: Badge NFT (¡Tu primer NFT! - 30 min)
**¡Crea tu NFT completo con Display!**

✅ One-Time Witness (OTW)
✅ Publisher y autoría
✅ Display - la "vitrina" del NFT
✅ Ver NFTs en Sui Explorer

📁 **Carpeta:** `02-badge-nft/` | 🎯 **Comando:** `sui client publish`

---

## 🎯 Cómo Usar Este Repositorio

> **💡 Consejo:** ¡Siempre consulta la [Guía de Comandos](https://github.com/gustavo-f0ntz/SUI-Comandos--Essenciais) cuando tengas dudas!

### Módulo 1: Hello Debug (¡Empieza aquí! 🚀)

1. **Entra en la carpeta:**
```bash
cd 01-hello-debug
```

2. **Completa los TODOs en el código:**
Abre `sources/hello_debug.move` e implementa las partes marcadas

3. **Ejecuta las pruebas:**
```bash
sui move test
```

¡Listo! Verás el output en la terminal. ¡Sencillo y rápido! ⚡

---

### Módulo 2: Hello Sui (¡Publicando en la blockchain! 🌐)

1. **Entra en la carpeta:**
```bash
cd 01-hello-sui
```

2. **Completa los TODOs en el código:**
Abre `sources/hello.move` e implementa las partes marcadas

3. **Compila tu código:**
```bash
sui move build
```

4. **Publica en testnet:**
```bash
sui client publish --gas-budget 100000000
```

5. **Prueba tu función:**
```bash
sui client call --package <PACKAGE_ID> --module hello --function create_message --args "Hello Piaui!" --gas-budget 10000000
```

6. **Ve tu objeto creado:**
```bash
sui client objects
```

---

### Módulo 3: Badge NFT (¡Tu primer NFT! 🎨)

1. **Entra en la carpeta:**
```bash
cd 02-badge-nft
```

2. **Completa los TODOs en el código:**
Abre `sources/badge.move` e implementa:
   - Función `init` (reclamar autoría)
   - Función `mint` (crear el badge)
   - Función `create_display` (vitrina del NFT)

3. **Compila:**
```bash
sui move build
```

4. **Publica:**
```bash
sui client publish --gas-budget 100000000
```
**⚠️ IMPORTANTE:** ¡Copia el `Package ID` y el `Publisher Object ID`!

5. **Crea el Display:**
```bash
sui client call --package <PACKAGE_ID> --module badge_nft --function create_display --args <PUBLISHER_ID> --gas-budget 10000000
```

6. **Crea tu primer Badge NFT:**
```bash
sui client call --package <PACKAGE_ID> --module badge_nft --function mint --args "Workshop Sui Piaui" "Participei do workshop de SUI em Parnaiba!" "https://via.placeholder.com/400x400/0099ff/ffffff?text=Piaui+Badge" --gas-budget 10000000
```

7. **Ve en Explorer:**
```bash
# Copia el Object ID del output y pégalo en explorer
# https://suiexplorer.com/?network=testnet
```

## 🆘 ¿Necesitas Ayuda?

### Gabarito
¡Si te quedas atascado, consulta la carpeta **`resolucoes/`** que contiene las implementaciones completas de todos los módulos!

### 📘 Comandos y Troubleshooting
¿Problemas con CLI, faucet, o compilación? Accede a:
👉 **[Guía de Comandos Esenciales](https://github.com/gustavo-f0ntz/SUI-Comandos--Essenciais)**

---

## 📖 Recursos Adicionales

- 📚 [Documentación Oficial de Sui](https://docs.sui.io/)
- 📖 [Move Language Book](https://move-language.github.io/move/)
- 🔍 [Sui Explorer (Testnet)](https://suiexplorer.com/?network=testnet)
- 🛠️ [Guía de Comandos CLI](https://github.com/gustavo-f0ntz/SUI-Comandos--Essenciais)
- 🎨 [Repositorio NFT Completo](https://github.com/gustavo-f0ntz/sui-nft-create)

---

## 🎓 Sobre el Workshop

**Instructor:** Gustavo Fontz
**Lugar:** Parnaíba - PI
**Fecha:** Noviembre 2025
**Objetivo:** Introducir a desarrolladores en los primeros pasos en Sui Blockchain a través de proyectos prácticos y progresivos.

### 🌟 Lo que aprenderás:
✅ Fundamentos del lenguaje Move
✅ Modelo de objetos de Sui
✅ Publicación de smart contracts
✅ Creación de NFTs con Display
✅ Interacción con la blockchain vía CLI

---

**💙 Hecho con dedicación para la comunidad Sui de Piauí**
"# sui-project1" 
