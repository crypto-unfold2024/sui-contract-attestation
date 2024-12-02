module attestations::attestations {


    /// Struct to store an attestation
    public struct Attestation has key, store {
        id: UID,            // Unique identifier for the attestation
        user: address,      // Address of the user creating the attestation
        latitude: u64,      // Latitude of the location (multiplied by a scaling factor for precision)
        longitude: u64,     // Longitude of the location (multiplied by a scaling factor for precision)
        verified: bool,     // Whether the attestation is verified
    }

    /// Create a new attestation
    public fun create_attestation(
        user: address,       // Address of the user
        latitude: u64,       // Latitude value
        longitude: u64,      // Longitude value
        verified: bool,      // Verification status
        ctx: &mut TxContext
    ): Attestation {
        Attestation {
            id: object::new(ctx),
            user,
            latitude,
            longitude,
            verified,
        }
    }

    /// Get the user address from an attestation
    public fun get_user(attestation: &Attestation): address {
        attestation.user
    }

    /// Get the latitude from an attestation
    public fun get_latitude(attestation: &Attestation): u64 {
        attestation.latitude
    }

    /// Get the longitude from an attestation
    public fun get_longitude(attestation: &Attestation): u64 {
        attestation.longitude
    }

    /// Check if the attestation is verified
    public fun is_verified(attestation: &Attestation): bool {
        attestation.verified
    }
}
