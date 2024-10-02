# Uninstall
rustup self uninstall

yarn remove "@orca-so/whirlpools-sdk"
yarn remove "@orca-so/common-sdk"
yarn remove "@coral-xyz/anchor@0.29.0"
yarn remove "@solana/web3.js"
yarn remove "@solana/spl-token"
yarn remove "decimal.js"

sudo apt-get update && \
sudo apt-get install -y \
    build-essential \
    pkg-config \
    libudev-dev llvm libclang-dev \
    protobuf-compiler libssl-dev

# Install Rust
# https://www.rust-lang.org/tools/install
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. "$HOME/.cargo/env"
export PATH=$PATH:$HOME/.cargo/bin
source ~/.bashrc
rustup default 1.79.0
rustc --version

# Install Solana CLI
# https://solana.com/docs/intro/installation
sh -c "$(curl -sSfL https://release.anza.xyz/stable/install)"
Close and reopen your terminal to apply the PATH changes or run the following in your existing shell:
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH" 
source ~/.bashrc
solana --version
agave-install update

# Install Anchor Framework with AVM (For developing Solana programs leverageing RUST macros)
# https://book.anchor-lang.com/getting_started/installation.html

cargo install --git https://github.com/coral-xyz/anchor avm --force
avm install 0.30.1
avm use 0.30.1
export PATH=$HOME/.avm/bin:$PATH
source ~/.bashrc
avm --version
anchor --version

# Intall Node Version Manager, Node.js and Yarn
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
command -v nvm
nvm install node
node --version
npm install --global yarn
yarn --version

# Check Solana config
solana config get

# Install Typescript via npm
#npm install -D typescript

# Update the Solana CLI cluster using the following commands:

# solana config set --url mainnet-beta
# solana config set --url devnet
# solana config set --url localhost
# solana config set --url testnet

# Or use the following short options:

# solana config set -um    # For mainnet-beta
# solana config set -ud    # For devnet
# solana config set -ul    # For localhost
# solana config set -ut    # For testnet

solana config set --url localhost

# Create Solana Wallet
solana-keygen new


yarn add "fastestsmallesttextencoderdecoder@^1.0.22"

# Install ORCA software stack
yarn add "@orca-so/whirlpools-sdk"
yarn add "@orca-so/common-sdk"
yarn add "@coral-xyz/anchor@0.29.0"
yarn add "@solana/web3.js"
yarn add "@solana/spl-token"
yarn add "decimal.js"

touch .gitignore && echo "node_modules/" >> .gitignore && git rm -r --cached node_modules && git add .gitignore
git config advice.addIgnoredFile false
git status