module attestations::attestations {


    /// Struct to store an attestation
    public struct Attestation has key, store {
        id: UID,
        data: vector<vector<u8>>, // Attestation data as UTF-8 encoded strings
        description: vector<u8>,  // Description of the attestation
    }

    /// Create a new attestation
    public fun create_attestation(
        data: vector<vector<u8>>, // Data for the attestation
        description: vector<u8>,  // Description of the attestation
        ctx: &mut TxContext
    ): Attestation {
        Attestation {
            id: object::new(ctx),
            data,
            description,
        }
    }

    /// View the data of an attestation
    public fun get_attestation_data(attestation: &Attestation): vector<vector<u8>> {
        attestation.data
    }

    /// View the description of an attestation
    public fun get_attestation_description(attestation: &Attestation): vector<u8> {
        attestation.description
    }
}
