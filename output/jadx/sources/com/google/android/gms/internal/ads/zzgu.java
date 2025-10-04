package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.Base64;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.net.URLDecoder;

/* loaded from: classes2.dex */
public final class zzgu extends zzgq {

    @Nullable
    private zzhb zza;

    @Nullable
    private byte[] zzb;
    private int zzc;
    private int zzd;

    public zzgu() {
        super(false);
    }

    @Override // com.google.android.gms.internal.ads.zzu
    public final int zza(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.zzd;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        byte[] bArr2 = this.zzb;
        int i4 = zzfy.zza;
        System.arraycopy(bArr2, this.zzc, bArr, i, min);
        this.zzc += min;
        this.zzd -= min;
        zzg(min);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final long zzb(zzhb zzhbVar) {
        zzi(zzhbVar);
        this.zza = zzhbVar;
        Uri normalizeScheme = zzhbVar.zza.normalizeScheme();
        String scheme = normalizeScheme.getScheme();
        zzek.zze(new ObfuscatedString(new long[]{-5634184384828301046L, 4646397468424405710L}).toString().equals(scheme), new ObfuscatedString(new long[]{-8254862178460761959L, 640773174445365821L, 8743533725385960650L, -1000978637024248234L}).toString().concat(String.valueOf(scheme)));
        String schemeSpecificPart = normalizeScheme.getSchemeSpecificPart();
        int i = zzfy.zza;
        String[] split = schemeSpecificPart.split(new ObfuscatedString(new long[]{-844811795175439909L, 846759390823865044L}).toString(), -1);
        if (split.length == 2) {
            String str = split[1];
            if (split[0].contains(new ObfuscatedString(new long[]{8426618484262874012L, 334173557090517316L}).toString())) {
                try {
                    this.zzb = Base64.decode(str, 0);
                } catch (IllegalArgumentException e) {
                    throw zzcc.zzb(new ObfuscatedString(new long[]{6821633141470422453L, 4378959083376167091L, -2500342803431324081L, -1589420595177300537L, 4330197352708853221L, -6909607789442608604L, -446085253400771520L}).toString().concat(String.valueOf(str)), e);
                }
            } else {
                this.zzb = URLDecoder.decode(str, zzfwq.zza.name()).getBytes(zzfwq.zzc);
            }
            long j = zzhbVar.zzf;
            int length = this.zzb.length;
            if (j <= length) {
                int i2 = (int) j;
                this.zzc = i2;
                int i3 = length - i2;
                this.zzd = i3;
                long j2 = zzhbVar.zzg;
                if (j2 != -1) {
                    this.zzd = (int) Math.min(i3, j2);
                }
                zzj(zzhbVar);
                long j3 = zzhbVar.zzg;
                if (j3 != -1) {
                    return j3;
                }
                return this.zzd;
            }
            this.zzb = null;
            throw new zzgx(2008);
        }
        throw zzcc.zzb(new ObfuscatedString(new long[]{2000571050487756086L, 5127450804265502824L, 5710091358933733548L, 7404377071540319543L}).toString().concat(String.valueOf(normalizeScheme)), null);
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    @Nullable
    public final Uri zzc() {
        zzhb zzhbVar = this.zza;
        if (zzhbVar != null) {
            return zzhbVar.zza;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zzd() {
        if (this.zzb != null) {
            this.zzb = null;
            zzh();
        }
        this.zza = null;
    }
}
