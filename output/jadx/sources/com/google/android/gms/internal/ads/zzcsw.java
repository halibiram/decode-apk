package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcsw {
    private final String zza;
    private final zzbsg zzb;
    private final Executor zzc;
    private zzctb zzd;
    private final zzbng zze = new zzcst(this);
    private final zzbng zzf = new zzcsv(this);

    public zzcsw(String str, zzbsg zzbsgVar, Executor executor) {
        this.zza = str;
        this.zzb = zzbsgVar;
        this.zzc = executor;
    }

    public static /* bridge */ /* synthetic */ boolean zzg(zzcsw zzcswVar, Map map) {
        if (map != null) {
            String str = (String) map.get(new ObfuscatedString(new long[]{-7264908531845150816L, -7357357669506192848L}).toString());
            if (!TextUtils.isEmpty(str) && str.equals(zzcswVar.zza)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final void zzc(zzctb zzctbVar) {
        this.zzb.zzb(new ObfuscatedString(new long[]{5973931924365510557L, -7848894282089797326L, 7728420417549364168L, -7287780196541820000L}).toString(), this.zze);
        this.zzb.zzb(new ObfuscatedString(new long[]{-4708957704083480929L, -6381215645051429718L, 7473581505193910496L, -7084932512436893669L}).toString(), this.zzf);
        this.zzd = zzctbVar;
    }

    public final void zzd(zzcjk zzcjkVar) {
        zzcjkVar.zzae(new ObfuscatedString(new long[]{-1907436400403898772L, 2564420864317013510L, 2037342113049573544L, -5593912446106726721L}).toString(), this.zze);
        zzcjkVar.zzae(new ObfuscatedString(new long[]{-8530567854824500103L, 8692329952421864339L, -9048490554967780965L, 5276395967150607657L}).toString(), this.zzf);
    }

    public final void zze() {
        this.zzb.zzc(new ObfuscatedString(new long[]{6541567107358931715L, -5059902019009348446L, -7007639632863115690L, 7671518196712843385L}).toString(), this.zze);
        this.zzb.zzc(new ObfuscatedString(new long[]{4304693732755535879L, -473905685589453778L, 6694682566996125699L, 2419360090212621616L}).toString(), this.zzf);
    }

    public final void zzf(zzcjk zzcjkVar) {
        zzcjkVar.zzaw(new ObfuscatedString(new long[]{2525057299452881000L, 3858449791343622698L, -6240640977915060972L, -5634445326243843534L}).toString(), this.zze);
        zzcjkVar.zzaw(new ObfuscatedString(new long[]{-6473837325108707991L, 2583189786665281186L, 5318428949522322674L, -8495185556845489911L}).toString(), this.zzf);
    }
}
