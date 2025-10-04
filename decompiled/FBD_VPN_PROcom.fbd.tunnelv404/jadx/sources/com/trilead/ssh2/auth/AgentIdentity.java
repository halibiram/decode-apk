package com.trilead.ssh2.auth;

/* loaded from: classes3.dex */
public interface AgentIdentity {
    String getAlgName();

    byte[] getPublicKeyBlob();

    byte[] sign(byte[] bArr);
}
