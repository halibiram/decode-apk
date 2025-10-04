package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzaxs extends zzaxx {
    private static volatile Long zzi;
    private static final Object zzj = new Object();

    public zzaxs(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2) {
        super(zzawjVar, new ObfuscatedString(new long[]{5075948227979700795L, 8807505501627290068L, 9160562946464262562L, 2940118847398404267L, -7510728893545404547L, -7429926203020683028L, 4902069195638310832L, -2276688915115247291L, -4180071795563294853L}).toString(), new ObfuscatedString(new long[]{-6568141027377228704L, 7502821632123052899L, 6884866147413535446L, -1132501061603195483L, 6090891450236288662L, -1795892287550258965L, -569438625384164806L}).toString(), zzasgVar, i, 33);
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        if (zzi == null) {
            synchronized (zzj) {
                try {
                    if (zzi == null) {
                        zzi = (Long) this.zzf.invoke(null, null);
                    }
                } finally {
                }
            }
        }
        synchronized (this.zze) {
            this.zze.zzV(zzi.longValue());
        }
    }
}
