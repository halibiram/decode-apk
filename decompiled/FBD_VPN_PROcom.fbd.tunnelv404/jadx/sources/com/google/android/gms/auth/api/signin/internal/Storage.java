package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;

@KeepForSdk
/* loaded from: classes2.dex */
public class Storage {
    private static final Lock zaa = new ReentrantLock();

    @Nullable
    @GuardedBy("sLk")
    private static Storage zab;
    private final Lock zac = new ReentrantLock();

    @GuardedBy("mLk")
    private final SharedPreferences zad;

    @VisibleForTesting
    public Storage(Context context) {
        this.zad = context.getSharedPreferences(new ObfuscatedString(new long[]{-7565213124182399612L, -284135147696583306L, -1156930119992772147L, -6843214859432782435L, -967686503654618249L}).toString(), 0);
    }

    @NonNull
    @KeepForSdk
    public static Storage getInstance(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        Lock lock = zaa;
        lock.lock();
        try {
            if (zab == null) {
                zab = new Storage(context.getApplicationContext());
            }
            Storage storage = zab;
            lock.unlock();
            return storage;
        } catch (Throwable th) {
            zaa.unlock();
            throw th;
        }
    }

    private static final String zae(String str, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-9153923785670982012L, -2052718654981701394L}), sb, str2);
    }

    @KeepForSdk
    public void clear() {
        this.zac.lock();
        try {
            this.zad.edit().clear().apply();
        } finally {
            this.zac.unlock();
        }
    }

    @Nullable
    @KeepForSdk
    public GoogleSignInAccount getSavedDefaultGoogleSignInAccount() {
        String zaa2;
        String zaa3 = zaa(new ObfuscatedString(new long[]{-5686311906335923551L, -1895472694315650860L, -7946630579593253062L, 404865558391492340L, 3899501354492233525L}).toString());
        if (TextUtils.isEmpty(zaa3) || (zaa2 = zaa(zae(new ObfuscatedString(new long[]{2174463032862322309L, 8497106670976435000L, 7102519705918747601L, -1148562557686426435L}).toString(), zaa3))) == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.zab(zaa2);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Nullable
    @KeepForSdk
    public GoogleSignInOptions getSavedDefaultGoogleSignInOptions() {
        String zaa2;
        String zaa3 = zaa(new ObfuscatedString(new long[]{-5613111170936228249L, 5989784245560889360L, -4484728744152021267L, 6161166366924781877L, -5371084979078303356L}).toString());
        if (TextUtils.isEmpty(zaa3) || (zaa2 = zaa(zae(new ObfuscatedString(new long[]{-4153564880747260767L, -3218628471054497778L, -2965607198591848952L, 8099982665426919784L}).toString(), zaa3))) == null) {
            return null;
        }
        try {
            return GoogleSignInOptions.zab(zaa2);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Nullable
    @KeepForSdk
    public String getSavedRefreshToken() {
        return zaa(new ObfuscatedString(new long[]{-1812302328086547359L, 5792605267958719043L, 4728854349616589998L}).toString());
    }

    @KeepForSdk
    public void saveDefaultGoogleSignInAccount(@NonNull GoogleSignInAccount googleSignInAccount, @NonNull GoogleSignInOptions googleSignInOptions) {
        Preconditions.checkNotNull(googleSignInAccount);
        Preconditions.checkNotNull(googleSignInOptions);
        zad(new ObfuscatedString(new long[]{-6579004659719908595L, 86095744031594087L, -6878070474454843405L, 297512017015111649L, 5978149189046138987L}).toString(), googleSignInAccount.zac());
        Preconditions.checkNotNull(googleSignInAccount);
        Preconditions.checkNotNull(googleSignInOptions);
        String zac = googleSignInAccount.zac();
        zad(zae(new ObfuscatedString(new long[]{-591581484576457984L, 718416690962957022L, 9047323467309097146L, -6888246976838038700L}).toString(), zac), googleSignInAccount.zad());
        zad(zae(new ObfuscatedString(new long[]{87061234741610530L, 4172280434322864138L, 1205205530541143993L, 976318437355509060L}).toString(), zac), googleSignInOptions.zaf());
    }

    @Nullable
    public final String zaa(@NonNull String str) {
        this.zac.lock();
        try {
            return this.zad.getString(str, null);
        } finally {
            this.zac.unlock();
        }
    }

    public final void zab(@NonNull String str) {
        this.zac.lock();
        try {
            this.zad.edit().remove(str).apply();
        } finally {
            this.zac.unlock();
        }
    }

    public final void zac() {
        String zaa2 = zaa(new ObfuscatedString(new long[]{-242492535984256720L, -1933557595768677802L, 5666376322393955055L, 5912683839411730946L, -3550679351333659756L}).toString());
        zab(new ObfuscatedString(new long[]{4073993438782562697L, 2156112321900484886L, -6025653827705699044L, 4944398358018709526L, 5082182173770666557L}).toString());
        if (TextUtils.isEmpty(zaa2)) {
            return;
        }
        zab(zae(new ObfuscatedString(new long[]{-7326774111530873586L, -2940408245694635380L, -7585067063442895474L, -5355875230190347732L}).toString(), zaa2));
        zab(zae(new ObfuscatedString(new long[]{-5135291838033868636L, 8531926289679022187L, -1545038324024254796L, 8313734440357422996L}).toString(), zaa2));
    }

    public final void zad(@NonNull String str, @NonNull String str2) {
        this.zac.lock();
        try {
            this.zad.edit().putString(str, str2).apply();
        } finally {
            this.zac.unlock();
        }
    }
}
