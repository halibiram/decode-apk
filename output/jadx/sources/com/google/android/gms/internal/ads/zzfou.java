package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.view.View;
import com.panda912.muddy.ObfuscatedString;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class zzfou extends zzfox {

    @SuppressLint({"StaticFieldLeak"})
    private static final zzfou zzb = new zzfou();

    private zzfou() {
    }

    public static zzfou zza() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfox
    public final void zzb(boolean z) {
        String obfuscatedString;
        Iterator it = zzfov.zza().zzc().iterator();
        while (it.hasNext()) {
            zzfpi zzg = ((zzfoh) it.next()).zzg();
            if (zzg.zzl()) {
                if (true != z) {
                    obfuscatedString = new ObfuscatedString(new long[]{-1731507413905529761L, -8545094567717792427L, -7367728639869391065L}).toString();
                } else {
                    obfuscatedString = new ObfuscatedString(new long[]{-5907383576243868913L, 5282176090841771976L, -6094489618844551620L}).toString();
                }
                zzfpb.zza().zzb(zzg.zza(), new ObfuscatedString(new long[]{-4760405002452312628L, -394436102241311862L}).toString(), obfuscatedString);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfox
    public final boolean zzc() {
        Iterator it = zzfov.zza().zzb().iterator();
        while (it.hasNext()) {
            View zzf = ((zzfoh) it.next()).zzf();
            if (zzf != null && zzf.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
