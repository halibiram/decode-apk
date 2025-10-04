package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzawz extends zzaxx {
    private static volatile Long zzi;
    private static final Object zzj = new Object();

    public zzawz(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2) {
        super(zzawjVar, new ObfuscatedString(new long[]{-601104774376309647L, 245918511781504486L, -3396297980320648746L, -9221461587625659094L, 1013371040232853593L, -2490458896781563682L, 8793201287642911237L, 5076411459378859002L, 2103793183646032051L}).toString(), new ObfuscatedString(new long[]{-3907985136184868985L, -8298596054152459177L, -7250156939245404076L, 1587303670044675412L, -2209839389102747206L, 8672077481133986216L, 4296341875660736841L}).toString(), zzasgVar, i, 44);
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
            this.zze.zzo(zzi.longValue());
        }
    }
}
