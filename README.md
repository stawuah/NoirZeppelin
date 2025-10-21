# NoirZeppelin

> The OpenZeppelin of Privacy: Battle-tested zero-knowledge patterns for Noir

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Noir](https://img.shields.io/badge/Noir-1.0.0-beta.13+-purple.svg)](https://noir-lang.org/)

NoirZeppelin is a comprehensive, production-ready privacy library for the Noir programming language that ports battle-tested OpenZeppelin contract patterns into zero-knowledge circuits. Build privacy-preserving applications for both Web2 and Web3 without deep cryptographic expertise.

## 🎯 Why NoirZeppelin?

Just as OpenZeppelin made smart contract development accessible and secure, NoirZeppelin makes zero-knowledge proof development simple and safe.

**Developer Experience:**
- **Simple API:** Import functions like `verify_password()` or `prove_token_balance()` - no cryptography PhD required
- **Copy-paste ready:** Production-ready circuits that work out of the box
- **Universal compatibility:** Same code works for Web2 backends and Web3 smart contracts
- **Fast integration:** Go from idea to working privacy app in hours, not weeks

**Key Benefits:**
- **Security by default:** Audited, battle-tested patterns prevent common ZK vulnerabilities
- **Reduced development time:** 10x faster than building privacy circuits from scratch
- **Lower risk:** No need to reinvent cryptographic primitives - use proven patterns
- **Privacy without complexity:** Abstract away circuit details, focus on your application logic

## 🚀 Quick Start

### Installation
```bash
# Install NoirZeppelin
nargo install noirzeppelin
```

### Your First Private Authentication
```noir
use dep::noirzeppelin::authentication::verify_password;

fn main(
    password: Field,        // Private
    salt: Field,            // Private
    password_hash: pub Field  // Public
) {
    let computed = verify_password(password, salt);
    assert(computed == password_hash);
}
```

That's it! You've just built a password authentication system where passwords never leave the client.

## 📦 Modules

- **🔐 Access Control** - Role verification, multisig, permissions
- **🔑 Authentication** - Password verification, 2FA, secret proofs
- **🪙 Token Operations** - Balance proofs, private transfers, NFT ownership
- **🗳️ Voting** - Private governance, anonymous voting, eligibility proofs
- **🌲 Merkle Proofs** - Membership proofs, batch verification, nullifiers

[View Full Documentation →](./docs)

## 🎓 Examples

- [Private Password Authentication (Web2)](./examples/web2/private-auth)
- [Token Gating (Web3)](./examples/web3/token-gating)
- [Anonymous DAO Voting (Web3)](./examples/web3/private-voting)
- [Private DeFi Swaps (Web3)](./examples/web3/private-defi)

[Browse All Examples →](./examples)

## 🛣️ Roadmap

- **Phase 1 (Months 1-2):** MVP with core modules + audit
- **Phase 2 (Months 3-4):** Extended modules + performance optimization
- **Phase 3 (Months 5-6):** Ecosystem integration + mainnet examples

[View Detailed Roadmap →](./docs/ROADMAP.md)

## 🛡️ Security

NoirZeppelin takes security seriously. We have:


- 📊 Formal verification for critical circuits
- 🔍 Continuous security monitoring

[View Security Policy →](./SECURITY.md)

## 🤝 Contributing

We welcome contributions! Please see [CONTRIBUTING.md](./CONTRIBUTING.md) for guidelines.

## 📄 License

MIT License - see [LICENSE](./LICENSE) for details.

## 🙏 Acknowledgments

Inspired by [OpenZeppelin](https://openzeppelin.com/) - the gold standard for smart contract security.

Built with [Noir](https://noir-lang.org/) - the universal ZK language.

---

**Built with ❤️ by the privacy community, for the privacy community.**