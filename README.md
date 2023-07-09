# foundry-smartContract-lottery

This repository contains a lottery project implemented in the Foundry framework. It leverages Chainlink VRF to generate random numbers, enabling the fair and unbiased selection of winners. Additionally, Chainlink Automation facilitates the seamless execution of the entire process, triggered automatically whenever an individual interacts with the contracts.

## To initiate a Foundry project from scratch

1. To get basic template of foundry framework.

```bash
  forge init
```

2. To compile the contract.

```bash
  forge compile
```

3. To deploy the contract.

- In Testnet.
  - only deploy

```bash
forge script script/DeployRaffle.s.sol --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast
```

- In Testnet.
  - deploy and verify

```bash
    forge script script/DeployRaffle.s.sol --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --verify --etherscan-api-key $ETHERSCAN_API_KEY --broadcast
```

- In anvil.
  - To run the anvil.

```bash
  anvil
```

- In anvil.
  - deploy.

```bash
  forge script script/DeployRaffle.s.sol --rpc-url $RPC_URL_ANVIL --private-key $PRIVATE_KEY_ANVIL --broadcast
```

### To Installing Chainlink contract library.

```bash
forge install smartcontractkit/chainlink-brownie-contracts@0.6.1 --no-commit
```

### To test the contract.

1. In locally

```bash
forge test
```

2. In testnet

```bash
forge test --fork-url $SEPOLIA_RPC_URL
```

### To check coverage

```bash
forge coverage
```

## For any help

- forge

```bash
  forge --help
```

and

```bash
  forge script --help
```

- cast

```bash
  cast --help
```
