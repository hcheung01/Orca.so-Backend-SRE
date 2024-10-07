#!/bin/bash

# https://solana.com/developers/cookbook/development/start-local-validator

# Benefits of using local-test-validator include:

# No RPC rate-limits
# No airdrop limits
# Direct onchain program deployment (--bpf-program ...)
# Clone accounts from a public cluster, including programs (--clone ...)
# Configurable transaction history retention (--limit-ledger-size ...)
# Configurable epoch length (--slots-per-epoch ...)
# Jump to an arbitrary slot (--warp-slot ...)

mkdir -p validator
cd validator
solana-test-validator &

