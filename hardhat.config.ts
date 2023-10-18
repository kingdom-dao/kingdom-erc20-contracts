import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox-viem";

const config: HardhatUserConfig = {
  networks: {
    polygon: {
      url: "",
      accounts: [""],
    }
  },
  solidity: "0.8.20",
};

export default config;
