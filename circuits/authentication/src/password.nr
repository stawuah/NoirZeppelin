use poseidon;

/// Verifies a password against a salted hash without revealing the password.
///
/// # Arguments
/// - `password`: The password to verify (private input).
/// - `salt`: Random salt value (private input).
///
/// # Returns
/// - `Field`: The computed password hash.
///
/// # Example
/// ```noir
/// let hash = verify_password(password, salt);
/// assert(hash == expected_hash);
/// ```

pub fn verify_password(
    password: Field,
    salt: Field
) -> Field {
    poseidon::poseidon::bn254::hash_2([password, salt])
}

/// Verifies password with additional parameters (advanced)
pub fn verify_password_advanced(password: Field,salt: Field,iterations: u32) -> Field {
    let mut hash = password;
    
    // Iterative hashing for added security
    for _ in 0..iterations {
        hash = poseidon::poseidon::bn254::hash_2([hash, salt]);
    }
    
    hash
}
