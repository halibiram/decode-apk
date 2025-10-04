package com.google.android.play.core.appupdate.internal;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzad implements zzaf {
    private static final Object zza = new Object();
    private volatile zzaf zzb;
    private volatile Object zzc = zza;

    private zzad(zzaf zzafVar) {
        this.zzb = zzafVar;
    }

    public static zzaf zzb(zzaf zzafVar) {
        zzafVar.getClass();
        if (zzafVar instanceof zzad) {
            return zzafVar;
        }
        return new zzad(zzafVar);
    }

    @Override // com.google.android.play.core.appupdate.internal.zzaf
    public final Object zza() {
        Object obj = this.zzc;
        Object obj2 = zza;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    obj = this.zzc;
                    if (obj == obj2) {
                        obj = this.zzb.zza();
                        Object obj3 = this.zzc;
                        if (obj3 != obj2 && obj3 != obj) {
                            throw new IllegalStateException(new ObfuscatedString(new long[]{6588866889891624647L, 5407420578087762032L, 8882213537610480381L, 4565064216008202474L, 6480651442124694693L, -2750105070120873236L, -3781494523571350920L, 8416879544488396565L, 5845272850268459928L, 5685605604333798833L}).toString() + obj3 + new ObfuscatedString(new long[]{3584264710071526306L, -3362882479284828995L}).toString() + obj + new ObfuscatedString(new long[]{1942261370833071315L, -3644172168065295266L, 7144507786959652038L, -8570766417240138427L, 6391964242267764440L, -6059411269494984L, -7102825109429634626L}).toString());
                        }
                        this.zzc = obj;
                        this.zzb = null;
                    }
                } finally {
                }
            }
        }
        return obj;
    }
}
