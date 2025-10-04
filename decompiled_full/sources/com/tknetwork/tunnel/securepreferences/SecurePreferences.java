package com.tknetwork.tunnel.securepreferences;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.securepreferences.crypto.HashSHA;
import com.tknetwork.tunnel.securepreferences.model.SecurityConfig;
import java.io.UnsupportedEncodingException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public final class SecurePreferences implements SharedPreferences {
    private static final String CHARSET = new ObfuscatedString(new long[]{8009051467602469292L, 8438016687297355200L}).toString();
    private final SharedPreferences mProxyPreferences;

    /* loaded from: classes3.dex */
    public final class Editor implements SharedPreferences.Editor {
        private SharedPreferences.Editor mProxyEditor;

        public Editor() {
            this.mProxyEditor = SecurePreferences.this.mProxyPreferences.edit();
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            this.mProxyEditor.apply();
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            return this.mProxyEditor.commit();
        }

        @Override // android.content.SharedPreferences.Editor
        public /* bridge */ /* synthetic */ SharedPreferences.Editor putStringSet(String str, Set set) {
            return putStringSet(str, (Set<String>) set);
        }

        @Override // android.content.SharedPreferences.Editor
        public Editor clear() {
            this.mProxyEditor.clear();
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public Editor putBoolean(String str, boolean z) {
            this.mProxyEditor.putString(SecurePreferences.this.generateKeyHash(str), SecurePreferences.this.encryptToBase64(Boolean.toString(z)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public Editor putFloat(String str, float f) {
            this.mProxyEditor.putString(SecurePreferences.this.generateKeyHash(str), SecurePreferences.this.encryptToBase64(Float.toString(f)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public Editor putInt(String str, int i) {
            this.mProxyEditor.putString(SecurePreferences.this.generateKeyHash(str), SecurePreferences.this.encryptToBase64(Integer.toString(i)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public Editor putLong(String str, long j) {
            this.mProxyEditor.putString(SecurePreferences.this.generateKeyHash(str), SecurePreferences.this.encryptToBase64(Long.toString(j)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public Editor putString(String str, String str2) {
            this.mProxyEditor.putString(SecurePreferences.this.generateKeyHash(str), SecurePreferences.this.encryptToBase64(str2));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public Editor putStringSet(String str, Set<String> set) {
            String generateKeyHash = SecurePreferences.this.generateKeyHash(str);
            HashSet hashSet = new HashSet();
            Iterator<String> it = set.iterator();
            while (it.hasNext()) {
                hashSet.add(SecurePreferences.this.encryptToBase64(it.next()));
            }
            this.mProxyEditor.putStringSet(generateKeyHash, hashSet);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public Editor remove(String str) {
            this.mProxyEditor.remove(SecurePreferences.this.generateKeyHash(str));
            return this;
        }
    }

    private SecurePreferences(Context context, String str, SecurityConfig securityConfig) {
        this.mProxyPreferences = context.getSharedPreferences(str, 0);
    }

    private String decryptFromBase64(String str) {
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String encryptToBase64(String str) {
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String generateKeyHash(String str) {
        try {
            return Base64.encodeToString(HashSHA.hashUsingSHA256(str.getBytes(new ObfuscatedString(new long[]{-8309636214703490235L, -4570267037721226968L}).toString())), 2);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    public static SecurePreferences getInstance(Context context, String str, SecurityConfig securityConfig) {
        if (context != null && str != null && securityConfig != null) {
            return new SecurePreferences(context.getApplicationContext(), str, securityConfig);
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-1667376915747600538L, 1265613495618916409L, -6291294800623648542L, 5451044775945671376L}).toString());
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        return this.mProxyPreferences.contains(generateKeyHash(str));
    }

    @Override // android.content.SharedPreferences
    public Map<String, ?> getAll() {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-7770715614615728208L, 1068275314996204969L, 8464212048937170301L, 2680001400703624814L}).toString());
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z) {
        String string = getString(str, null);
        if (string != null) {
            return Boolean.parseBoolean(string);
        }
        return z;
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String str, float f) {
        String string = getString(str, null);
        if (string != null) {
            return Float.parseFloat(string);
        }
        return f;
    }

    @Override // android.content.SharedPreferences
    public int getInt(String str, int i) {
        String string = getString(str, null);
        if (string != null) {
            return Integer.parseInt(string);
        }
        return i;
    }

    @Override // android.content.SharedPreferences
    public long getLong(String str, long j) {
        String string = getString(str, null);
        if (string != null) {
            return Long.parseLong(string);
        }
        return j;
    }

    @Override // android.content.SharedPreferences
    public String getString(String str, String str2) {
        String string = this.mProxyPreferences.getString(generateKeyHash(str), null);
        if (string != null) {
            return decryptFromBase64(string);
        }
        return str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.Set<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.util.Set<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.HashSet] */
    @Override // android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        Set<String> stringSet = this.mProxyPreferences.getStringSet(generateKeyHash(str), null);
        if (stringSet != null) {
            set = new HashSet<>();
            Iterator<String> it = stringSet.iterator();
            while (it.hasNext()) {
                set.add(decryptFromBase64(it.next()));
            }
        }
        return set;
    }

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.mProxyPreferences.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.mProxyPreferences.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // android.content.SharedPreferences
    public Editor edit() {
        return new Editor();
    }
}
