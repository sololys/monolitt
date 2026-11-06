# ==============================================================================
# SOLOLYS // RELIKVIEHALLEN (THE RELIQUARY) — FORMAL VERIFICATION CONTRACT
# STATE ANCHOR: 0xABCDEF00 | LICENSE: ALL RIGHTS RESERVED (PROPRIETARY SHOWROOM)
# ==============================================================================

.DEFAULT_GOAL := hold
.PHONY: hold verify

hold:
	@echo "[HOLD // 0.00 V DC] Reliquary display cases are sealed. Implicit execution is denied."
	@echo "Run 'make verify' to audit the 11 Ring II Black-Box Monolith cryptographic seals."
	@exit 1

verify:
	@python3 verify_reliquary_seals.py --verify
	@python3 -m unittest -v verify_reliquary_seals.py
	@echo "[RELIQUARY_GATE=PASS // 12/12] All 11 Ring II Black-Box Monolith seals verified at 0xABCDEF00 (0.00 V DC)."
