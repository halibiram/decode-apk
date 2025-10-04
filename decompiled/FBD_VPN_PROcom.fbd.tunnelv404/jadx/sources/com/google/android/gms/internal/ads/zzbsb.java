package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.UUID;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzbsb implements zzbrn {
    private final zzbrp zza;
    private final zzbrq zzb;
    private final zzbrj zzc;
    private final String zzd;

    public zzbsb(zzbrj zzbrjVar, String str, zzbrq zzbrqVar, zzbrp zzbrpVar) {
        this.zzc = zzbrjVar;
        this.zzd = str;
        this.zzb = zzbrqVar;
        this.zza = zzbrpVar;
    }

    public static /* bridge */ /* synthetic */ void zzd(zzbsb zzbsbVar, zzbrd zzbrdVar, zzbrk zzbrkVar, Object obj, zzceu zzceuVar) {
        try {
            com.google.android.gms.ads.internal.zzt.zzp();
            String uuid = UUID.randomUUID().toString();
            zzbnf.zzo.zzc(uuid, new zzbsa(zzbsbVar, zzbrdVar, zzceuVar));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(new ObfuscatedString(new long[]{3452192306233879563L, 7425458769906083749L}).toString(), uuid);
            jSONObject.put(new ObfuscatedString(new long[]{7991664776019384845L, -654909479937442119L}).toString(), zzbsbVar.zzb.zzb(obj));
            zzbrkVar.zzl(zzbsbVar.zzd, jSONObject);
        } catch (Exception e) {
            try {
                zzceuVar.zzd(e);
                zzcec.zzh(new ObfuscatedString(new long[]{-1087033105813183259L, -5687714244969815385L, -4715128767549269908L, -7180297925851002655L, -4219820794462270372L}).toString(), e);
            } finally {
                zzbrdVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdu
    public final ListenableFuture zza(@Nullable Object obj) {
        return zzb(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzbrn
    public final ListenableFuture zzb(Object obj) {
        zzceu zzceuVar = new zzceu();
        zzbrd zzb = this.zzc.zzb(null);
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-5284098940785338496L, 1656085763439528106L, 3927921545450527487L, -932769987333061923L, 2885595710565178769L, -1707245666393111518L}).toString());
        zzb.zzi(new zzbry(this, zzb, obj, zzceuVar), new zzbrz(this, zzceuVar, zzb));
        return zzceuVar;
    }
}
