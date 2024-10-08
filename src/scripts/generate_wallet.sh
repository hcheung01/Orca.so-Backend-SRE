#!/bin/bash

solana-keygen new --no-passphrase -o ~/validator-keypair.json
solana-keygen pubkey ~/validator-keypair.json
solana config set --keypair ~/validator-keypair.json


