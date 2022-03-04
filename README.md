# Irukandji Spec

```
Contract name                    Irukandji
Ticker                           KANDJI
Token standard                   ERC721

SALES STRATEGIES PER 15 februari

total supply                     8888

public sale                      5555 (62.5%)
presale      (whitelist)         2778 (31.2%)
team reserve (unminted)          555  (6.20%)

*legendary kandjis               88

public sale                      0.2eth
presale                          0.1eth

max buy during public sale       2 pcs
```

## First Step: Generate the merkle proof

Add whitlisted address to `whitelist/addresses.json`.

PLEASE NOTE: Don't forget to normalize the address first (e.g. remove leading/trailing whitespace)

Generate the merkle proof:

    node whitelist/generateMerkleProofs.js
