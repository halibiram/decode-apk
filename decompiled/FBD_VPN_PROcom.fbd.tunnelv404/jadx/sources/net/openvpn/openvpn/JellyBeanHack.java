package net.openvpn.openvpn;

import android.content.Context;
import android.os.Build;
import android.security.KeyChain;
import java.lang.reflect.Method;
import java.security.PrivateKey;

/* loaded from: classes3.dex */
public class JellyBeanHack extends JellyBeanHackBase {
    private static final String TAG = "JellyBeanHack";
    private String alias_;
    private PrivateKey pk_;
    private boolean rsa_sign_initialized;

    private JellyBeanHack() {
        this.rsa_sign_initialized = false;
        resetPrivateKey();
        if (rsa_sign_init() == 1) {
            this.rsa_sign_initialized = true;
        }
        new StringBuilder("JellyBeanHack: rsa_sign_initialized=").append(this.rsa_sign_initialized);
    }

    private synchronized PrivateKey get_pk(String str) {
        PrivateKey privateKey;
        String str2 = this.alias_;
        if (str2 != null && str2.equals(str)) {
            privateKey = this.pk_;
        }
        privateKey = null;
        return privateKey;
    }

    public static JellyBeanHack newJellyBeanHack() {
        String.format("Build.VERSION.SDK_INT=%d", Integer.valueOf(Build.VERSION.SDK_INT));
        return null;
    }

    private static int openssl_pkey(PrivateKey privateKey) {
        if (privateKey == null) {
            return 0;
        }
        Method declaredMethod = privateKey.getClass().getSuperclass().getDeclaredMethod("getOpenSSLKey", null);
        declaredMethod.setAccessible(true);
        Object invoke = declaredMethod.invoke(privateKey, null);
        declaredMethod.setAccessible(false);
        Method declaredMethod2 = invoke.getClass().getDeclaredMethod("getPkeyContext", null);
        declaredMethod2.setAccessible(true);
        int intValue = ((Integer) declaredMethod2.invoke(invoke, null)).intValue();
        declaredMethod2.setAccessible(false);
        return intValue;
    }

    private static native void pkey_retain(int i);

    private static native byte[] rsa_sign(byte[] bArr, int i);

    private static native int rsa_sign_init();

    private synchronized PrivateKey set_pk(String str, PrivateKey privateKey) {
        try {
            this.alias_ = null;
            this.pk_ = null;
            if (privateKey != null) {
                pkey_retain(openssl_pkey(privateKey));
                if (str != null && str.length() > 0) {
                    this.alias_ = str;
                    this.pk_ = privateKey;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.pk_;
    }

    public boolean enabled() {
        return this.rsa_sign_initialized;
    }

    public synchronized PrivateKey getPrivateKey(Context context, String str) {
        PrivateKey privateKey;
        privateKey = get_pk(str);
        if (privateKey == null) {
            privateKey = set_pk(str, KeyChain.getPrivateKey(context, str));
        }
        return privateKey;
    }

    public synchronized void resetPrivateKey() {
        this.alias_ = null;
        this.pk_ = null;
    }

    public synchronized byte[] rsaSign(PrivateKey privateKey, byte[] bArr) {
        return rsa_sign(bArr, openssl_pkey(privateKey));
    }
}
