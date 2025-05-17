# v4-template
### **A template for writing Uniswap v4 Hooks 🦄**

[`Use this Template`](https://github.com/uniswapfoundation/v4-template/generate)

1. The example hook [Counter.sol](src/Counter.sol) demonstrates the `beforeSwap()` and `afterSwap()` hooks
2. The test template [Counter.t.sol](test/Counter.t.sol) preconfigures the v4 pool manager, test tokens, and test liquidity.

<details>
<summary>Updating to v4-template:latest</summary>

This template is actively maintained -- you can update the v4 dependencies, scripts, and helpers: 
```bash
git remote add template https://github.com/uniswapfoundation/v4-template
git fetch template
git merge template/main <BRANCH> --allow-unrelated-histories
```

</details>

---

### Check Forge Installation
*Ensure that you have correctly installed Foundry (Forge) Stable. You can update Foundry by running:*

```
foundryup
```

> *v4-template* appears to be _incompatible_ with Foundry Nightly. See [foundry announcements](https://book.getfoundry.sh/announcements) to revert back to the stable build



## Set up

*requires [foundry](https://book.getfoundry.sh)*

```
forge install
forge test
```

### Local Development (Anvil)

Other than writing unit tests (recommended!), you can only deploy & test hooks on [anvil](https://book.getfoundry.sh/anvil/)

```bash
# start anvil, a local EVM chain
anvil

# in a new terminal
forge script script/Anvil.s.sol \
    --rpc-url http://localhost:8545 \
    --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 \
    --broadcast
```

See [script/](script/) for hook deployment, pool creation, liquidity provision, and swapping.

---

<details>
<summary><h2>Troubleshooting</h2></summary>

# mainnet transactions 
'''
Hook contract

##### base
✅  [Success] Hash: 0x67bc84b0d6972ecb012a45153362fbc04365061713aae933c54b5f832f626ad6
Block: 30356031                                                                                                                                                                
Paid: 0.00000489452501736 ETH (4296360 gas * 0.001139226 gwei)

✅ Sequence #1 on base | Total Paid: 0.00000489452501736 ETH (4296360 gas * avg 0.001139226 gwei)       

'''

'''
## Setting up 1 EVM.

==========================

Chain 8453

Estimated gas price: 0.002190122 gwei

Estimated total gas used for script: 808078

Estimated amount required: 0.000001769789405516 ETH

==========================

##### base
✅  [Success] Hash: 0xbdbfa78e0879fe10d5e60051f63925779436bc86c62d4bb0948cf4d64701fda1
Block: 30356394
Paid: 0.000000053656721254 ETH (47818 gas * 0.001122103 gwei)

                                                                                                                                                                               
##### base                                                                                                                                                                     
✅  [Success] Hash: 0x498b4f95266edd826e90491e52c3150f4d95a79336159582636bdcc36484e758                                                                                         
Block: 30356394                                                                                                                                                                
Paid: 0.000000052968872115 ETH (47205 gas * 0.001122103 gwei)                                                                                                                  
                                                                                                                                                                               
                                                                                                                                                                               
##### base                                                                                                                                                                     
✅  [Success] Hash: 0xa4449820debe8d27abed125dd8cceb1e0bf345abd5fb5e5dd1ac68d7fb3615f0                                                                                         
Block: 30356394                                                                                                                                                                
Paid: 0.000000052968872115 ETH (47205 gas * 0.001122103 gwei)                                                                                                                  

                                                                                                                                                                               
##### base                                                                                                                                             
Minting Position and Adding liquidity

✅  [Success] Hash: 0xef2e3f5050b0850aef64f03f9c77bdf348f730071f28f887317363d575b0f10f                                                                                         
Block: 30356394                                                                                                                                                                
Paid: 0.000000053656721254 ETH (47818 gas * 0.001122103 gwei)


##### base
✅  [Success] Hash: 0x3afc53f739848fd38d09047b983a19992ad2a25e6d6ca43d39849bab66485dd8
Block: 30356394                                                                                                                                                                
Paid: 0.000000436907634595 ETH (389365 gas * 0.001122103 gwei)

✅ Sequence #1 on base | Total Paid: 0.000000650158821333 ETH (579411 gas * avg 0.001122103 gwei)   

'''