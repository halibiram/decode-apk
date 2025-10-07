package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
final class zzfxj extends zzfwz {
    private final Object zza;

    public zzfxj(Object obj) {
        this.zza = obj;
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof zzfxj) {
            return this.zza.equals(((zzfxj) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 1502476572;
    }

    public final String toString() {
        String obj = this.zza.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-1187941185216814958L, 755592185582010384L, -4557901743850898752L}).toString());
        sb.append(obj);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3732118186296658282L, -1931638965096234386L}), sb);
    }

    @Override // com.google.android.gms.internal.ads.zzfwz
    public final zzfwz zza(zzfws zzfwsVar) {
        Object apply = zzfwsVar.apply(this.zza);
        zzfxe.zzc(apply, new ObfuscatedString(new long[]{-5587145104847623569L, -3506656295665519341L, 1290914211542615804L, 4929278337304603176L, -6068010628915297275L, 8426417395622377926L, -7860296123401206279L, -3731703671693054141L, 7078421580851809363L, 318978276265378527L}).toString());
        return new zzfxj(apply);
    }

    @Override // com.google.android.gms.internal.ads.zzfwz
    public final Object zzb(Object obj) {
        return this.zza;
    }
}
