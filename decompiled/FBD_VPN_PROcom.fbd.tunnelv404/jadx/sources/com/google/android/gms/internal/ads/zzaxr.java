package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzaxr extends zzaxx {
    private final zzawq zzi;
    private long zzj;

    public zzaxr(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2, zzawq zzawqVar) {
        super(zzawjVar, new ObfuscatedString(new long[]{5195895271621201609L, -4590816873478113586L, 8740297946988058649L, -506339259043254917L, -36939994590207859L, 4469277230179427615L, 6527936220291555954L, 4179281166553271482L, -259673503784470080L}).toString(), new ObfuscatedString(new long[]{-6890700349400462793L, -8657793104674473443L, 1879657412671882200L, -290374126478034519L, -2763677963481159671L, -1475422973546021901L, 5623101011779945263L}).toString(), zzasgVar, i, 53);
        this.zzi = zzawqVar;
        if (zzawqVar != null) {
            this.zzj = zzawqVar.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        if (this.zzi != null) {
            this.zze.zzP(((Long) this.zzf.invoke(null, Long.valueOf(this.zzj))).longValue());
        }
    }
}
