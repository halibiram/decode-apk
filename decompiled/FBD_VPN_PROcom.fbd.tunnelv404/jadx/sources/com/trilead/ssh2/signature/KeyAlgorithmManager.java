package com.trilead.ssh2.signature;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.signature.ECDSAKeyAlgorithm;
import j$.util.DesugarCollections;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes3.dex */
public final class KeyAlgorithmManager {
    private static final Collection<KeyAlgorithm<PublicKey, PrivateKey>> supportedAlgorithms = buildSupportAlgorithmsList();

    private KeyAlgorithmManager() {
    }

    private static Collection<KeyAlgorithm<PublicKey, PrivateKey>> buildSupportAlgorithmsList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ED25519KeyAlgorithm());
        try {
            KeyFactory.getInstance(new ObfuscatedString(new long[]{-8881353125013733187L, 2643723622942116935L}).toString());
            arrayList.add(new ECDSAKeyAlgorithm.ECDSASha2Nistp521());
            arrayList.add(new ECDSAKeyAlgorithm.ECDSASha2Nistp384());
            arrayList.add(new ECDSAKeyAlgorithm.ECDSASha2Nistp256());
        } catch (GeneralSecurityException unused) {
        }
        arrayList.add(new RSAKeyAlgorithm());
        arrayList.add(new DSAKeyAlgorithm());
        return DesugarCollections.unmodifiableCollection(arrayList);
    }

    public static Collection<KeyAlgorithm<PublicKey, PrivateKey>> getSupportedAlgorithms() {
        return supportedAlgorithms;
    }
}
