package net.i2p.crypto.eddsa;

import net.i2p.crypto.eddsa.spec.EdDSAParameterSpec;

/* loaded from: classes3.dex */
public interface EdDSAKey {
    public static final String KEY_ALGORITHM = "EdDSA";

    EdDSAParameterSpec getParams();
}
