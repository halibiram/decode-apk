package com.google.android.gms.internal.ads;

import android.os.IBinder;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
final class zzfuu extends zzfvn {
    private final IBinder zza;

    @Nullable
    private final String zzb;
    private final int zzc;
    private final float zzd;
    private final int zze;

    @Nullable
    private final String zzf;

    public /* synthetic */ zzfuu(IBinder iBinder, boolean z, String str, int i, float f, int i2, String str2, int i3, String str3, String str4, String str5, zzfut zzfutVar) {
        this.zza = iBinder;
        this.zzb = str;
        this.zzc = i;
        this.zzd = f;
        this.zze = i3;
        this.zzf = str4;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfvn) {
            zzfvn zzfvnVar = (zzfvn) obj;
            if (this.zza.equals(zzfvnVar.zze())) {
                zzfvnVar.zzk();
                String str = this.zzb;
                if (str != null ? str.equals(zzfvnVar.zzg()) : zzfvnVar.zzg() == null) {
                    if (this.zzc == zzfvnVar.zzc() && Float.floatToIntBits(this.zzd) == Float.floatToIntBits(zzfvnVar.zza())) {
                        zzfvnVar.zzb();
                        zzfvnVar.zzi();
                        if (this.zze == zzfvnVar.zzd()) {
                            zzfvnVar.zzh();
                            String str2 = this.zzf;
                            if (str2 != null ? str2.equals(zzfvnVar.zzf()) : zzfvnVar.zzf() == null) {
                                zzfvnVar.zzj();
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = this.zza.hashCode() ^ 1000003;
        String str = this.zzb;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int floatToIntBits = (((((((hashCode2 * 1000003) ^ 1237) * 1000003) ^ hashCode) * 1000003) ^ this.zzc) * 1000003) ^ Float.floatToIntBits(this.zzd);
        int i2 = this.zze;
        String str2 = this.zzf;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((floatToIntBits * 583896283) ^ i2) * (-721379959)) ^ i) * 1000003;
    }

    public final String toString() {
        String obj = this.zza.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{6506227813199626882L, 7646640805471763070L, 4472864749904563651L, 3548465074968293810L, -5076354661445951598L, 5610656048175122279L}).toString());
        sb.append(obj);
        sb.append(new ObfuscatedString(new long[]{6276909323003950844L, -6864373118915944474L, 3781086803930722740L, 7057910048454081856L, 7706746134738475935L, -7064828836124733385L}).toString());
        sb.append(this.zzb);
        sb.append(new ObfuscatedString(new long[]{8798608864902208585L, 3999715941478573968L, -4805620504287906786L}).toString());
        sb.append(this.zzc);
        sb.append(new ObfuscatedString(new long[]{-4580547874874532264L, 6982409790878420613L, 6908242624677842740L, -4625135237364821355L}).toString());
        sb.append(this.zzd);
        sb.append(new ObfuscatedString(new long[]{-282442697594499229L, 1153322798532351554L, 5334846497200877015L, 4491266927161113622L, -7988934009062192512L, -1731006089720648849L, 7247216739435779679L, 4854063521326486428L}).toString());
        sb.append(this.zze);
        sb.append(new ObfuscatedString(new long[]{-7486381448195600440L, 4508350494905341048L, 3909732476947901556L, -820512769647790971L, -8300186234612074464L, -4962634551562808137L}).toString());
        sb.append(this.zzf);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8994209668139956610L, 4561315057595259361L, 7315754827505557464L, 2627179403280410729L, -8929986193892991963L}), sb);
    }

    @Override // com.google.android.gms.internal.ads.zzfvn
    public final float zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzfvn
    public final int zzb() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfvn
    public final int zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzfvn
    public final int zzd() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzfvn
    public final IBinder zze() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfvn
    @Nullable
    public final String zzf() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzfvn
    @Nullable
    public final String zzg() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfvn
    @Nullable
    public final String zzh() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfvn
    @Nullable
    public final String zzi() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfvn
    @Nullable
    public final String zzj() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfvn
    public final boolean zzk() {
        return false;
    }
}
