package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.R;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.internal.zzah;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

@KeepForSdk
@Deprecated
/* loaded from: classes2.dex */
public final class GoogleServices {
    private static final Object zza = new Object();

    @Nullable
    @GuardedBy("lock")
    private static GoogleServices zzb;

    @Nullable
    private final String zzc;
    private final Status zzd;
    private final boolean zze;
    private final boolean zzf;

    @KeepForSdk
    @VisibleForTesting
    public GoogleServices(String str, boolean z) {
        this.zzc = str;
        this.zzd = Status.RESULT_SUCCESS;
        this.zze = z;
        this.zzf = !z;
    }

    @KeepForSdk
    private static GoogleServices checkInitialized(String str) {
        GoogleServices googleServices;
        synchronized (zza) {
            try {
                googleServices = zzb;
                if (googleServices == null) {
                    throw new IllegalStateException(new ObfuscatedString(new long[]{2315456733662326216L, -8221048745605931474L, -3082938403627315308L, 7728628952984037599L, -8019154552254764309L, -5144787458356938446L}).toString() + str + new ObfuscatedString(new long[]{6052693160389210764L, -4231771544270151816L}).toString());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return googleServices;
    }

    @KeepForSdk
    @VisibleForTesting
    public static void clearInstanceForTest() {
        synchronized (zza) {
            zzb = null;
        }
    }

    @Nullable
    @KeepForSdk
    public static String getGoogleAppId() {
        return checkInitialized(new ObfuscatedString(new long[]{-937387484265605707L, 838181316154089341L, 6076720825983843613L}).toString()).zzc;
    }

    @NonNull
    @KeepForSdk
    public static Status initialize(@NonNull Context context) {
        Status status;
        Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{-7822557869181909567L, -3396547028686489475L, 4756902812889442325L, 7780856953621974249L, 5911811016666302198L}).toString());
        synchronized (zza) {
            try {
                if (zzb == null) {
                    zzb = new GoogleServices(context);
                }
                status = zzb.zzd;
            } catch (Throwable th) {
                throw th;
            }
        }
        return status;
    }

    @KeepForSdk
    public static boolean isMeasurementEnabled() {
        GoogleServices checkInitialized = checkInitialized(new ObfuscatedString(new long[]{8588706841073880890L, 8971824706212919325L, 7124607781440505685L, -7766649416704803736L}).toString());
        if (checkInitialized.zzd.isSuccess() && checkInitialized.zze) {
            return true;
        }
        return false;
    }

    @KeepForSdk
    public static boolean isMeasurementExplicitlyDisabled() {
        return checkInitialized(new ObfuscatedString(new long[]{36519423518455317L, -3855314485129766923L, 7239613799914110598L, -7801362619301706767L, 8161161728118391221L}).toString()).zzf;
    }

    @KeepForSdk
    @VisibleForTesting
    public Status checkGoogleAppId(String str) {
        String str2 = this.zzc;
        if (str2 != null && !str2.equals(str)) {
            String str3 = this.zzc;
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{1655205863929010974L, -2625391371282897877L, 5880075027247050509L, 3965370409504692488L, -7267808260667408083L, 8733823175928482358L, -8396144967593053727L, -3962088162488181419L, -5702408781449393388L, 6894398005250606231L, -4285447813549487099L, 7767281224488981230L, -4548713956897517807L}).toString());
            sb.append(str3);
            return new Status(10, AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5998296941921581944L, -2800505358394273385L}), sb));
        }
        return Status.RESULT_SUCCESS;
    }

    @KeepForSdk
    @VisibleForTesting
    public GoogleServices(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier(new ObfuscatedString(new long[]{5858854994049238659L, 1928029755163226860L, 3929902370385597852L, -8339624154387237850L, 224121864584895847L}).toString(), new ObfuscatedString(new long[]{7231566122687481539L, 267341234268375818L}).toString(), resources.getResourcePackageName(R.string.common_google_play_services_unknown_issue));
        if (identifier != 0) {
            int integer = resources.getInteger(identifier);
            boolean z = integer == 0;
            r2 = integer != 0;
            this.zzf = z;
        } else {
            this.zzf = false;
        }
        this.zze = r2;
        String zzb2 = zzah.zzb(context);
        zzb2 = zzb2 == null ? new StringResourceValueReader(context).getString(new ObfuscatedString(new long[]{2090790443042997419L, -2718958140069295695L, -7104292220725580093L}).toString()) : zzb2;
        if (TextUtils.isEmpty(zzb2)) {
            this.zzd = new Status(10, new ObfuscatedString(new long[]{6439533657499148990L, 3897765160814729587L, -5400562873584425924L, 1200204274910179439L, -7097077627311456631L, 7495994419686064106L, 7979192029514860597L, -8357589598660520132L, -126006124309631019L, 3640918321194761978L, 2471044746848505517L}).toString());
            this.zzc = null;
        } else {
            this.zzc = zzb2;
            this.zzd = Status.RESULT_SUCCESS;
        }
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public static Status initialize(@NonNull Context context, @NonNull String str, boolean z) {
        Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{6559165348228167490L, 8641545753488243199L, -3670332799122772293L, 7884463575670303281L, -901614507605361058L}).toString());
        Preconditions.checkNotEmpty(str, new ObfuscatedString(new long[]{3602687805804042146L, -3828218521059531699L, -946460831104202054L, -8233989198044438342L}).toString());
        synchronized (zza) {
            try {
                GoogleServices googleServices = zzb;
                if (googleServices != null) {
                    return googleServices.checkGoogleAppId(str);
                }
                GoogleServices googleServices2 = new GoogleServices(str, z);
                zzb = googleServices2;
                return googleServices2.zzd;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
