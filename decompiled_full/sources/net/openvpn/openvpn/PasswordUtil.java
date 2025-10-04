package net.openvpn.openvpn;

import android.content.SharedPreferences;
import android.util.Base64;
import com.google.common.base.Ascii;
import defpackage.AbstractC0362x4440ab85;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
public class PasswordUtil {
    private static final String TAG = "PasswordUtil";
    private String cipherName;
    private IvParameterSpec ivParms;
    private SharedPreferences mSettings;
    private String prefPrefix = "pwdv1";
    private byte[] salt;
    private SecretKey secret;

    public PasswordUtil(SharedPreferences sharedPreferences) {
        this.mSettings = sharedPreferences;
        regenerate(false);
    }

    private void check_salt() {
        byte[] bArr;
        byte[] bArr2 = get_salt();
        if (bArr2 != null && (bArr = this.salt) != null && !Arrays.equals(bArr2, bArr)) {
            regenerate(false);
        }
    }

    private String de(String str) {
        check_salt();
        if (str != null && this.secret != null && this.prefPrefix != null) {
            try {
                byte[] decode = Base64.decode(str, 0);
                Cipher cipher = Cipher.getInstance(this.cipherName);
                cipher.init(2, this.secret, this.ivParms);
                return new String(cipher.doFinal(decode), "UTF-8");
            } catch (Exception unused) {
                regenerate(true);
                return null;
            }
        }
        return null;
    }

    private String en(String str) {
        check_salt();
        if (str != null && this.secret != null && this.prefPrefix != null) {
            try {
                Cipher cipher = Cipher.getInstance(this.cipherName);
                cipher.init(1, this.secret, this.ivParms);
                return Base64.encodeToString(cipher.doFinal(str.getBytes("UTF-8")), 2);
            } catch (Exception unused) {
                regenerate(true);
                return null;
            }
        }
        return null;
    }

    private void generate_salt() {
        byte[] bArr = new byte[16];
        new SecureRandom().nextBytes(bArr);
        SharedPreferences.Editor edit = this.mSettings.edit();
        edit.putString(key_string("settings", "entropy"), Base64.encodeToString(bArr, 2));
        edit.apply();
    }

    private byte[] get_salt() {
        try {
            String string = this.mSettings.getString(key_string("settings", "entropy"), null);
            if (string == null) {
                return null;
            }
            return Base64.decode(string, 0);
        } catch (Exception unused) {
            return null;
        }
    }

    private String key_prefix(String str) {
        if (str != null) {
            return this.prefPrefix + "." + str + ".";
        }
        return AbstractC0362x4440ab85.m2931x34271fae(this.prefPrefix, ".");
    }

    private String key_string(String str, String str2) {
        return this.prefPrefix + "." + str + "." + str2;
    }

    public String get(String str, String str2) {
        try {
            return de(this.mSettings.getString(key_string(str, str2), null));
        } catch (ClassCastException unused) {
            regenerate(true);
            return null;
        }
    }

    public void regenerate(boolean z) {
        this.cipherName = "AES/CBC/PKCS5Padding";
        byte[] bArr = {-42, -31, -117, 101, Ascii.EM, 119, Byte.MAX_VALUE, 37, 121, -54, 46, 49, -35, -48, -72, 97};
        this.salt = null;
        if (!z) {
            this.salt = get_salt();
        }
        if (z || this.salt == null) {
            remove(null);
            generate_salt();
            this.salt = get_salt();
        }
        if (this.salt != null) {
            try {
                this.secret = new SecretKeySpec(SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1").generateSecret(new PBEKeySpec("It was a bright cold day in April, and the clocks were striking thirteen. Winston Smith, his chin nuzzled into his breast in an effort to escape the vile wind, slipped quickly through the glass doors of Victory Mansions, though not quickly enough to prevent a swirl of gritty dust from entering along with him.".toCharArray(), this.salt, 16, 128)).getEncoded(), this.cipherName);
                this.ivParms = new IvParameterSpec(bArr);
                return;
            } catch (Exception unused) {
            }
        }
        this.secret = null;
        this.prefPrefix = null;
    }

    public void remove(String str, String str2) {
        SharedPreferences.Editor edit = this.mSettings.edit();
        edit.remove(key_string(str, str2));
        edit.apply();
    }

    public void set(String str, String str2, String str3) {
        SharedPreferences.Editor edit = this.mSettings.edit();
        String key_string = key_string(str, str2);
        String en = en(str3);
        if (en != null) {
            edit.putString(key_string, en);
            edit.apply();
        }
    }

    public void remove(String str) {
        SharedPreferences.Editor edit = this.mSettings.edit();
        Set<String> keySet = this.mSettings.getAll().keySet();
        String key_prefix = key_prefix(str);
        for (String str2 : keySet) {
            if (str2.startsWith(key_prefix)) {
                edit.remove(str2);
            }
        }
        edit.apply();
    }
}
