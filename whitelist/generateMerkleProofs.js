const { MerkleTree } = require("merkletreejs");
const keccak256 = require("keccak256");
const addresses = require("./addresses.json");
const fs = require("fs");

function addressToBuffer(addr) {
  const buf = Buffer.from(addr.substr(2).padStart(32 * 2, "0"), "hex");
  return Buffer.concat([buf]);
}

async function main() {
  // Create new merkle tree
  const leaves = addresses.map((x) => addressToBuffer(x));
  const tree = new MerkleTree(leaves, keccak256, { sort: true });
  const merkleProofs = {};
  for (const address of addresses) {
    const leaf = addressToBuffer(address);
    const proof = tree.getHexProof(leaf);
    merkleProofs[address] = proof;
  }
  // Dump the proofs
  fs.writeFileSync("whitelist/merkleProofs.json", JSON.stringify(merkleProofs));
}

main();
