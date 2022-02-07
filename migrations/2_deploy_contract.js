var GradientTokens = artifacts.require("./GradientToken.sol");

module.exports = function(deployer) {
  deployer.deploy(GradientTokens);
};
