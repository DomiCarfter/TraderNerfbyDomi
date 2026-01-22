# 7 Days to Die - Trader Nerf Mod

## Übersicht
Diese Mod macht das Trading-System in 7 Days to Die deutlich herausfordernder, indem sie Preise erhöht, Items später verfügbar macht und die Produktvielfalt beim Händler reduziert.

---

## Installation

### Automatische Installation (Empfohlen)
1. Doppelklick auf `INSTALL.bat`
2. Das Script findet automatisch dein Spiel und installiert den Mod
3. Fertig!

### Manuelle Installation
1. Kopiere den kompletten Ordner `TraderNerfbyDomi` nach:
   ```
   C:\Program Files (x86)\Steam\steamapps\common\7 Days To Die\Mods\
   ```
2. Falls der `Mods` Ordner nicht existiert, erstelle ihn
3. Starte das Spiel - der Mod wird automatisch geladen

**Finale Struktur:**
```
7 Days To Die\Mods\TraderNerfbyDomi\
├── ModInfo.xml
└── Config\
    ├── traders.xml
    └── quests.xml
```

---

## Änderungen im Detail

### 1. Globale Preis-Anpassungen (Zeile 1)

| Parameter | Original | Modifiziert | Auswirkung |
|-----------|----------|-------------|------------|
| `buy_markup` | 3.0 | 7.5 | Items sind **2,5x teurer** beim Kauf |
| `sell_markdown` | 0.2 | 0.15 | Verkaufserlös nur noch **15% statt 20%** |

**Beispiel:** Ein Item mit Basiswert 100 kostet jetzt 750 statt 300 Duke Coins!

---

### 2. Trader Stage Templates - Verfügbarkeit verzögert

Alle Waffen, Werkzeuge und Ausrüstung erscheinen deutlich später im Händler-Inventar:

#### Base Tier Waffen & Werkzeuge

| Template | Quality | Original Min | Modifiziert Min | Verzögerung |
|----------|---------|--------------|-----------------|-------------|
| **baseTier0** | Q2-Q5 | 1-15 | 2-19 | +20-27% |
| **baseTier1** | Q1-Q5 | 15-60 | 25-90 | +67-50% |
| **baseTier2** | Q1-Q5 | 50 | 80-100 | +60-100% |
| **baseTier3** | Q1-Q5 | 100 | 150-170 | +50-70% |

**Beispiel:** Eine Q5 Stahlwaffe (baseTier2) ist erst ab Level 100 statt Level 50 verfügbar!

---

#### Werkstationen & Utilities

| Template | Original Min | Modifiziert Min | Verzögerung |
|----------|--------------|-----------------|-------------|
| **midTier0** (Forge) | 10 | 15 | +50% |
| **midTier1** (Workbench) | 20 | 30 | +50% |
| **midTier2** (Chem Station) | 30 | 50 | +67% |
| **midTier3** (Super Corn) | 40 | 60 | +50% |

---

#### Munition

| Template | Typ | Original Min | Modifiziert Min | Verzögerung |
|----------|-----|--------------|-----------------|-------------|
| **ammoTier2** | HP/Slug/HE | 25 | 40 | +60% |
| **ammoTier3** | AP/Breach/Frag | 55 | 90 | +64% |

---

#### Bögen & Armbrüste

| Template | Waffe | Quality | Original Min | Modifiziert Min | Verzögerung |
|----------|-------|---------|--------------|-----------------|-------------|
| **bowsTier1** | Wooden Bow | Q1-Q5 | 15-35 | 25-53 | +67-51% |
| **bowsTier2** | Compound/Iron Crossbow | Q1-Q5 | 30-70 | 50-105 | +67-50% |
| **bowsTier3** | Compound Crossbow | Q1-Q5 | 50-90 | 75-135 | +50% |

---

#### Elektrische Ausrüstung

| Template | Items | Original Min | Modifiziert Min | Verzögerung |
|----------|-------|--------------|-----------------|-------------|
| **electricTier3** | Solar Bank, Blade Trap, Auto Turret | 45-95 | 68-142 | +51-49% |

---

#### Fahrzeuge

| Template | Fahrzeug | Original Min | Modifiziert Min | Verzögerung |
|----------|----------|--------------|-----------------|-------------|
| **vehicleTier0** | Bicycle Parts | 1 | 1 | +50% max |
| **vehicleTier1** | Minibike Parts | 25 | 38 | +52% |
| **vehicleTier2** | Motorcycle Parts | 50 | 75 | +50% |
| **vehicleTier3** | 4x4 Parts | 75 | 112 | +49% |
| **vehicleTier4** | Gyro Parts | 100 | 150 | +50% |
| **vehicleTier5** | Gyro Full | 150 | 187 | +25% |

---

### 3. Händler-Inventar reduziert (~50% weniger Items)

Alle vier Haupthändler haben jetzt deutlich weniger Items gleichzeitig im Angebot:

#### Trader Joel (ID:1) - Kleidung & Rüstung

**Specialty Items:**
- Rüstungs-Mods: 4-6 → **2-3** (-50%)
- Leichte/Mittlere/Schwere Rüstung: 8 → **4** (-50%)
- Skill Magazines: 7 → **3** (-57%)
- Bücher: 3-4 → **1-2** (-50%)
- Werkzeuge: 10 → **5** (-50%)

**General Items:**
- General Loot: 4-8 → **2-4** (-50%)
- Mods: 7-10 → **3-5** (-50%)
- Waffen (Melee/Ranged): 5-7 → **2-3** (-60%)
- Deko-Blöcke: 6-10 → **3-5** (-50%)

---

#### Trader Bob (ID:6) - Werkzeuge & Fahrzeuge

**Specialty Items:**
- Fahrzeuge: 2 → **1** (-50%)
- Robotik: 2 → **1** (-50%)
- Elektrische Items: 8-15 → **4-7** (-50%)
- Skill Magazines: 7 → **3** (-57%)
- Werkzeuge: 10 → **5** (-50%)

**General Items:**
- General Loot: 4-10 → **2-5** (-50%)
- Mods: 7-10 → **3-5** (-50%)
- Rüstung: 6 → **3** (-50%)

---

#### Trader Hugh (ID:7) - Waffen & Munition

**Specialty Items:**
- Munition (alle): 2-4 → **1-2** (-50%)
- Munitions-Supplies: 2-3 → **1** (-67%)
- Nahkampf-/Fernkampfwaffen: 5-7 → **2-3** (-60%)
- Waffenteile: 2-4 → **1-2** (-50%)
- Skill Magazines: 7 → **3** (-57%)

**General Items:**
- General Loot: 4-8 → **2-4** (-50%)
- Mods: 7-10 → **3-5** (-50%)
- Werkzeuge: 10 → **5** (-50%)

---

#### Trader Rekt (ID:8) - Essen & Farming

**Specialty Items:**
- Seeds: 2-5 → **1-2** (-60%)
- Konserven: 3-6 → **1-3** (-50%)
- Lebensmittel-Supplies: 2-5 → **1-2** (-60%)
- Food Items: 1-3 → **1** (-67%)
- Skill Magazines: 7 → **3** (-57%)

**General Items:**
- General Loot: 4-8 → **2-4** (-50%)
- Mods: 7-10 → **3-5** (-50%)
- Waffen: 5-7 → **2-3** (-60%)

---

### 4. Unverändert geblieben

Die folgenden Bereiche wurden **NICHT** modifiziert:

- **traderAlways Gruppe** (Zeile 1110-1124)
  - Grundlegende Munition
  - Wasser und Grundnahrungsmittel
  - Bandagen und Schienen
  - Benzin
  - Diese Items bleiben immer verfügbar!

- **Vending Machines** (ID:3, 4, 5, 10)
- **Test Trader** (ID:9)
- **Trader Jen** (ID:2) - wurde nicht verändert

---

## Gameplay-Auswirkungen

### Early Game (Level 1-30)
- **Deutlich härter**: Weniger Auswahl, höhere Preise
- Basic-Ausrüstung (Tier 0) bleibt verfügbar, aber teurer
- Looting wird wichtiger, da Händler-Shopping weniger attraktiv ist

### Mid Game (Level 31-80)
- **Tier 1 Waffen** erscheinen später (ab Level 25+ statt 15+)
- **Werkstationen** wie Workbench erst ab Level 30 statt 20
- **Forge** erst ab Level 15 statt 10
- Munition wird knapper und teurer

### Late Game (Level 81-150)
- **Tier 2 Waffen** erst ab Level 80-100 statt Level 50
- **Fahrzeug-Progression** deutlich verlangsamt
- **Beste Ausrüstung** (Tier 3) erst ab Level 150+ statt 100+
- Elektrische Items wie Auto Turrets ab Level 82+ statt 55+

### Endgame (Level 150+)
- **Tier 3 Items** werden zugänglich
- Gyrocopter-Teile ab Level 187+ statt 150+
- Immer noch teuer und in geringer Auswahl

---

## Empfehlungen für Spieler

1. **Looting priorisieren** - Händler sind jetzt Notlösung, nicht Hauptquelle
2. **Crafting lernen** - Selbst herstellen ist günstiger als kaufen
3. **Quest-Belohnungen** nutzen - Werden wichtiger als Händler-Käufe
4. **Duke Coins sparen** - Preise sind 2,5x höher, gut überlegen was man kauft
5. **Geduld haben** - Beste Ausrüstung kommt deutlich später

---

## Technische Details

- **Datei:** traders.xml → traders_nerfed.xml
- **Geänderte Zeilen:**
  - Zeile 1: Globale Einstellungen
  - Zeilen 23-185: Trader Stage Templates
  - Zeilen 1170-1385: Trader Inventare (ID 1, 6, 7, 8)
- **Unveränderte Trader:** ID 2 (Jen), 3, 4, 5, 9, 10

---

## Kompatibilität

- **7 Days to Die Version:** Alpha 21+ (sollte mit den meisten Versionen kompatibel sein)
- **Multiplayer:** Ja, Server-seitig
- **Andere Mods:** Kompatibel mit den meisten Mods (außer anderen Trader-Overhauls)

---

## Changelog

### Version 1.0
- Initiale Release
- Alle oben genannten Änderungen implementiert
- Getestet mit Alpha 21

---

## Credits

Erstellt mit Claude Code
Mod-Typ: Balancing / Difficulty Increase

---

## Support & Feedback

Bei Fragen oder Problemen bitte ein Issue erstellen oder kontaktieren.

**Viel Erfolg beim Überleben! 🧟**
