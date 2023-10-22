import { HardhatUserConfig } from 'hardhat/config'
import '@nomicfoundation/hardhat-toolbox-viem'
import dotenv from 'dotenv'
dotenv.config()

// API
const ETHERSCAN_KEY = process.env.ETHERSCAN_KEY as string
// NETWORK
const SEPOLIA_RPC_URL = process.env.SEPOLIA_RPC_URL as string
const SEPOLIA_PRIVATE_KEY = process.env.SEPOLIA_PRIVATE_KEY as string

const config: HardhatUserConfig = {
  networks: {
    sepolia: {
      url: SEPOLIA_RPC_URL,
      accounts: [SEPOLIA_PRIVATE_KEY],
    },
  },
  etherscan: {
    apiKey: ETHERSCAN_KEY,
  },
  solidity: '0.8.20',
}

export default config
