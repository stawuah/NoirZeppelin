// NoirZeppelin Authentication Module
// Provides privacy-preserving authentication primitives

mod password;
pub use password::verify_password;
use poseidon;


#[test]
fn test_verify_password_success() {
    let password = 12345;
    let salt = 67890;
    let expected_hash = poseidon::poseidon::bn254::hash_2([password, salt]);
    
    let computed = verify_password(password, salt);
    assert(computed == expected_hash);
}

#[test]
fn test_verify_password_different_inputs() {
    let password1 = 12345;
    let password2 = 99999;
    let salt = 67890;
    
    let hash1 = verify_password(password1, salt);
    let hash2 = verify_password(password2, salt);
    
    assert(hash1 != hash2);
}

#[test]
fn test_verify_password_salt_matters() {
    let password = 12345;
    let salt1 = 67890;
    let salt2 = 11111;
    
    let hash1 = verify_password(password, salt1);
    let hash2 = verify_password(password, salt2);
    
    assert(hash1 != hash2);
}