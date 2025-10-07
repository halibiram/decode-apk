package com.trilead.ssh2.crypto;

import java.security.KeyPair;

/* loaded from: classes3.dex */
public abstract class CertificateDecoder {
    public abstract KeyPair createKeyPair(PEMStructure pEMStructure);

    public KeyPair createKeyPair(PEMStructure pEMStructure, String str) {
        return createKeyPair(pEMStructure);
    }

    public abstract String getEndLine();

    public abstract String getStartLine();
}
