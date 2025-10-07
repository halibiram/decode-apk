package com.google.android.gms.internal.ads;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzaxn extends zzaxx {
    private List zzi;
    private final Context zzj;

    public zzaxn(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2, Context context) {
        super(zzawjVar, new ObfuscatedString(new long[]{-4100098979096654581L, 735652957899503527L, -5608547423574462318L, 7027189434584251622L, -8104002249161315672L, 407602888611720620L, -1263150134131380770L, 2460944978153349481L, 6303062935753744228L}).toString(), new ObfuscatedString(new long[]{2676619439988918634L, -3972446665979796632L, -7098255892851727979L, -9171386594030586194L, -7051453835387178688L, -2258888908363531201L, 415604991449554427L}).toString(), zzasgVar, i, 31);
        this.zzi = null;
        this.zzj = context;
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        this.zze.zzW(-1L);
        this.zze.zzS(-1L);
        Context context = this.zzj;
        if (context == null) {
            context = this.zzb.zzb();
        }
        if (this.zzi == null) {
            this.zzi = (List) this.zzf.invoke(null, context);
        }
        List list = this.zzi;
        if (list != null && list.size() == 2) {
            synchronized (this.zze) {
                this.zze.zzW(((Long) this.zzi.get(0)).longValue());
                this.zze.zzS(((Long) this.zzi.get(1)).longValue());
            }
        }
    }
}
