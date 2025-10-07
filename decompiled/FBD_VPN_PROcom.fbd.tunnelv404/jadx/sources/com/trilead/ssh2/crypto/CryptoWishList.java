package com.trilead.ssh2.crypto;

import com.trilead.ssh2.crypto.cipher.BlockCipherFactory;
import com.trilead.ssh2.crypto.digest.MessageMac;
import com.trilead.ssh2.transport.KexManager;

/* loaded from: classes3.dex */
public class CryptoWishList {
    public String[] kexAlgorithms = KexManager.getDefaultKexAlgorithmList();
    public String[] serverHostKeyAlgorithms = KexManager.getDefaultServerHostkeyAlgorithmList();
    public String[] c2s_enc_algos = BlockCipherFactory.getDefaultCipherList();
    public String[] s2c_enc_algos = BlockCipherFactory.getDefaultCipherList();
    public String[] c2s_mac_algos = MessageMac.getMacs();
    public String[] s2c_mac_algos = MessageMac.getMacs();
}
