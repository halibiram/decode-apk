package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzbmx implements zzbng {
    @Override // com.google.android.gms.internal.ads.zzbng
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcjk zzcjkVar = (zzcjk) obj;
        if (zzcjkVar.zzJ() != null) {
            zzcjkVar.zzJ().zza();
        }
        com.google.android.gms.ads.internal.overlay.zzm zzL = zzcjkVar.zzL();
        if (zzL != null) {
            zzL.zzb();
            return;
        }
        com.google.android.gms.ads.internal.overlay.zzm zzM = zzcjkVar.zzM();
        if (zzM != null) {
            zzM.zzb();
        } else {
            zzcec.zzj(new ObfuscatedString(new long[]{-7307008754169917644L, 447347158536067253L, -8872067920158410134L, 4724938872754059977L, -1394190115412462003L, -5211837674715766604L, -447044170734011687L, 6502329487406712513L}).toString());
        }
    }
}
