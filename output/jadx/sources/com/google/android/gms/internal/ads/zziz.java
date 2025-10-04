package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.core.view.PointerIconCompat;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes2.dex */
public final class zziz extends zzce {

    @Deprecated
    public static final zzn zzd = new zzn() { // from class: com.google.android.gms.internal.ads.zziy
    };
    private static final String zzl = Integer.toString(1001, 36);
    private static final String zzm = Integer.toString(PointerIconCompat.TYPE_HAND, 36);
    private static final String zzn = Integer.toString(PointerIconCompat.TYPE_HELP, 36);
    private static final String zzo = Integer.toString(PointerIconCompat.TYPE_WAIT, 36);
    private static final String zzp = Integer.toString(WebSocketProtocol.CLOSE_NO_STATUS_CODE, 36);
    private static final String zzq = Integer.toString(PointerIconCompat.TYPE_CELL, 36);
    public final int zze;

    @Nullable
    public final String zzf;
    public final int zzg;

    @Nullable
    public final zzam zzh;
    public final int zzi;

    @Nullable
    public final zzur zzj;
    final boolean zzk;

    private zziz(int i, Throwable th, int i2) {
        this(i, th, null, i2, null, -1, null, 4, false);
    }

    public static zziz zzb(Throwable th, String str, int i, @Nullable zzam zzamVar, int i2, boolean z, int i3) {
        int i4;
        if (zzamVar == null) {
            i4 = 4;
        } else {
            i4 = i2;
        }
        return new zziz(1, th, null, i3, str, i, zzamVar, i4, z);
    }

    public static zziz zzc(IOException iOException, int i) {
        return new zziz(0, iOException, i);
    }

    public static zziz zzd(RuntimeException runtimeException, int i) {
        return new zziz(2, runtimeException, i);
    }

    @CheckResult
    public final zziz zza(@Nullable zzur zzurVar) {
        String message = getMessage();
        int i = zzfy.zza;
        return new zziz(message, getCause(), this.zzb, this.zze, this.zzf, this.zzg, this.zzh, this.zzi, zzurVar, this.zzc, this.zzk);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private zziz(int i, @Nullable Throwable th, @Nullable String str, int i2, @Nullable String str2, int i3, @Nullable zzam zzamVar, int i4, boolean z) {
        this(TextUtils.isEmpty(null) ? r0 : r0.concat(new ObfuscatedString(new long[]{-2518652789808003523L, -3788585730940952996L}).toString()), th, i2, i, str2, i3, zzamVar, i4, null, SystemClock.elapsedRealtime(), z);
        String obfuscatedString;
        ObfuscatedString obfuscatedString2;
        if (i == 0) {
            obfuscatedString = new ObfuscatedString(new long[]{2268127173680940558L, -8038148350802642497L, 1346319928802166038L}).toString();
        } else if (i != 1) {
            obfuscatedString = new ObfuscatedString(new long[]{-6337585029333606828L, 4892399727889860372L, -3062183806854106912L, 9206794730777194038L}).toString();
        } else {
            String valueOf = String.valueOf(zzamVar);
            int i5 = zzfy.zza;
            if (i4 == 0) {
                obfuscatedString2 = new ObfuscatedString(new long[]{-5079533922918352571L, 7216312745298850241L});
            } else if (i4 == 1) {
                obfuscatedString2 = new ObfuscatedString(new long[]{6470163479973065506L, -1369268187560480840L, 1893531607721079381L, 6069070584660449212L});
            } else if (i4 == 2) {
                obfuscatedString2 = new ObfuscatedString(new long[]{6794123396033928690L, -7767270107610024891L, -2389757649987255643L, -2907631157938923540L});
            } else if (i4 == 3) {
                obfuscatedString2 = new ObfuscatedString(new long[]{4119234895776878568L, -1872390178089451690L, 8850879578828168148L, 8717324338634895896L});
            } else {
                if (i4 != 4) {
                    throw new IllegalStateException();
                }
                obfuscatedString2 = new ObfuscatedString(new long[]{-3140072556004972785L, 4422498963262510247L});
            }
            String obfuscatedString3 = obfuscatedString2.toString();
            StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str2);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{-4364272853265011036L, 1542668084873955894L, 7374295903496930055L}).toString());
            m3341xc20437a5.append(i3);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{-3378323456350053062L, 2136009555701747875L, 6125993219374086473L}).toString());
            m3341xc20437a5.append(valueOf);
            obfuscatedString = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{8347092885564330062L, 5006726970985380235L, 6042103908612857932L, -6589085756878136233L}), m3341xc20437a5, obfuscatedString3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private zziz(String str, @Nullable Throwable th, int i, int i2, @Nullable String str2, int i3, @Nullable zzam zzamVar, int i4, @Nullable zzur zzurVar, long j, boolean z) {
        super(str, th, i, j);
        int i5;
        boolean z2;
        if (z) {
            i5 = i2;
            if (i5 != 1) {
                z2 = false;
                zzek.zzd(z2);
                zzek.zzd(th != null);
                this.zze = i5;
                this.zzf = str2;
                this.zzg = i3;
                this.zzh = zzamVar;
                this.zzi = i4;
                this.zzj = zzurVar;
                this.zzk = z;
            }
            i5 = 1;
        } else {
            i5 = i2;
        }
        z2 = true;
        zzek.zzd(z2);
        zzek.zzd(th != null);
        this.zze = i5;
        this.zzf = str2;
        this.zzg = i3;
        this.zzh = zzamVar;
        this.zzi = i4;
        this.zzj = zzurVar;
        this.zzk = z;
    }
}
