package net.openvpn.openvpn;

import android.content.SharedPreferences;
import defpackage.AbstractC0362x4440ab85;
import java.util.Set;

/* loaded from: classes3.dex */
public class PrefUtil {
    private static final String TAG = "PrefUtil";
    private SharedPreferences mSettings;
    private Object pkey;

    public PrefUtil(SharedPreferences sharedPreferences) {
        this.mSettings = sharedPreferences;
    }

    private String key_by_profile(String str, String str2) {
        return AbstractC0362x4440ab85.m2953x742e2fda(str2, ".", str);
    }

    public boolean contains_key(String str) {
        return this.mSettings.contains(str);
    }

    public void delete_key(String str) {
        SharedPreferences.Editor edit = this.mSettings.edit();
        StringBuilder sb = new StringBuilder("delete_key: key='");
        sb.append(str);
        sb.append("'");
        edit.remove(str);
        edit.apply();
    }

    public void delete_key_by_profile(String str, String str2) {
        SharedPreferences.Editor edit = this.mSettings.edit();
        String key_by_profile = key_by_profile(str, str2);
        StringBuilder sb = new StringBuilder("delete_key_by_profile: key='");
        sb.append(key_by_profile);
        sb.append("'");
        edit.remove(key_by_profile);
        edit.apply();
    }

    public boolean get_boolean(String str, boolean z) {
        try {
            boolean z2 = this.mSettings.getBoolean(str, z);
            StringBuilder sb = new StringBuilder("get_boolean: ");
            sb.append(str);
            sb.append("=");
            sb.append(z2);
            return z2;
        } catch (ClassCastException unused) {
            StringBuilder sb2 = new StringBuilder("get_boolean ");
            sb2.append(str);
            sb2.append(" class cast exception");
            return z;
        }
    }

    public boolean get_boolean_by_profile(String str, String str2, boolean z) {
        try {
            boolean z2 = this.mSettings.getBoolean(key_by_profile(str, str2), z);
            String.format("get_boolean_by_profile: key='%s' value=%b", this.pkey, Boolean.valueOf(z2));
            return z2;
        } catch (ClassCastException unused) {
            return z;
        }
    }

    public String get_string(String str) {
        try {
            String string = this.mSettings.getString(str, null);
            StringBuilder sb = new StringBuilder("get_string: ");
            sb.append(str);
            sb.append("='");
            sb.append(string);
            sb.append("'");
            return string;
        } catch (ClassCastException unused) {
            StringBuilder sb2 = new StringBuilder("get_string ");
            sb2.append(str);
            sb2.append(" class cast exception");
            return null;
        }
    }

    public String get_string_by_profile(String str, String str2) {
        try {
            String string = this.mSettings.getString(key_by_profile(str, str2), null);
            String.format("get_string_by_profile: key='%s' value='%s'", this.pkey, string);
            return string;
        } catch (ClassCastException unused) {
            return null;
        }
    }

    public Set<String> get_string_set(String str) {
        try {
            Set<String> stringSet = this.mSettings.getStringSet(str, null);
            String.format("get_string_set: %s='%s'", str, stringSet);
            return stringSet;
        } catch (ClassCastException unused) {
            StringBuilder sb = new StringBuilder("get_string_set ");
            sb.append(str);
            sb.append(" class cast exception");
            return null;
        }
    }

    public void set_boolean(String str, boolean z) {
        SharedPreferences.Editor edit = this.mSettings.edit();
        edit.putBoolean(str, z);
        StringBuilder sb = new StringBuilder("set_boolean: ");
        sb.append(str);
        sb.append("=");
        sb.append(z);
        edit.apply();
    }

    public void set_boolean_by_profile(String str, String str2, boolean z) {
        SharedPreferences.Editor edit = this.mSettings.edit();
        String key_by_profile = key_by_profile(str, str2);
        StringBuilder sb = new StringBuilder("set_boolean_by_profile: key='");
        sb.append(key_by_profile);
        sb.append("' value=");
        sb.append(z);
        edit.putBoolean(key_by_profile, z);
        edit.apply();
    }

    public void set_string(String str, String str2) {
        SharedPreferences.Editor edit = this.mSettings.edit();
        edit.putString(str, str2);
        StringBuilder sb = new StringBuilder("set_string: ");
        sb.append(str);
        sb.append("='");
        sb.append(str2);
        sb.append("'");
        edit.apply();
    }

    public void set_string_by_profile(String str, String str2, String str3) {
        SharedPreferences.Editor edit = this.mSettings.edit();
        String key_by_profile = key_by_profile(str, str2);
        StringBuilder sb = new StringBuilder("set_string_by_profile: key='");
        sb.append(key_by_profile);
        sb.append("' value='");
        sb.append(str3);
        sb.append("'");
        edit.putString(key_by_profile, str3);
        edit.apply();
    }

    public void set_string_set(String str, Set<String> set) {
        SharedPreferences.Editor edit = this.mSettings.edit();
        edit.putStringSet(str, set);
        String.format("set_string: %s='%s'", str, set);
        edit.apply();
    }
}
