# Attestation Contract

## Overview

This contract is a simple implementation of an attestation system on Sui. It allows users to create and manage attestations with structured data fields such as user address, geographical coordinates (latitude and longitude), and a verification status. The contract is designed to be lightweight, efficient, and easy to integrate into other systems.

## Features

- **Structured Attestations**:

  - User address (`address`)
  - Geographical coordinates (`latitude` and `longitude` as `u64`)
  - Verification status (`bool`)

- **Efficient Design**:

  - Uses primitive types for simplicity and performance.

- **Getter Functions**:
  - Retrieve individual fields such as `user`, `latitude`, `longitude`, and `verified`.

## Deployed Contract

The attestation contract is deployed on **Sui Devnet**.

[Deployed Contract on Sui Devnet](https://suiscan.xyz/devnet/object/0x3e4069eff4eec8d2a15ec372293dbeb90632d1f5b71bee87db3f7b06df2193c3/contracts)

## Usage

### Creating an Attestation

You can create an attestation using the `create_attestation` function:

```move
let attestation = create_attestation(
    @0x1234,      // User's address
    123456789,    // Latitude (scaled, e.g., 12.3456789 * 10^7)
    987654321,    // Longitude (scaled, e.g., 98.7654321 * 10^7)
    true,         // Verified status
    ctx
);
```
