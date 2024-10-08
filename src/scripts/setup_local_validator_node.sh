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

echo "Creating validator folder at ~/validator"
mkdir -p ~/validator
cd ~/validator
solana-test-validator --faucet-port 9901 &
solana config set --url http://127.0.0.1:9901

# Check listening ports
sudo lsof -i -P -n | grep LISTEN

# Check address, balance, and deposit $OL$
solana address
solana balance
solana airdrop 999
solana balance

# Verify CLI Tool Suite Configuration, hash should match solana-test-validator status output
solana genesis-hash

# Check runtime features
solana feature status -ul

# Confirm node or cluster is reachable
solana transaction-count

# generate 2nd wallet and test sending $OL$
# Example:
# solana transfer --from <YOUR_KEYPAIR_FILEPATH> <RECIPIENT_ACCOUNT_ADDRESS> 0.5 --allow-unfunded-recipient --url https://api.devnet.solana.com --fee-payer <YOUR_KEYPAIR_FILEPATH>

#solana-keygen new --no-passphrase --no-outfile # <RECIPIENT_ACCOUNT_ADDRESS> 
#solana transfer --from ~/validator-keypair.json HCgVLRhXm1YND6mxYePmyPjrF2LPsvkzj1Teu8LXZdYK 0.5 --allow-unfunded-recipient -ul --fee-payer ~/validator-keypair.json
#solana balance HCgVLRhXm1YND6mxYePmyPjrF2LPsvkzj1Teu8LXZdYK