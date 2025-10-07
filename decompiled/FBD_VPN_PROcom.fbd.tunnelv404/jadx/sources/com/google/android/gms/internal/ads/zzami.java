package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.nio.charset.Charset;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class zzami implements zzakr {
    private final zzfp zza = new zzfp();
    private final zzaly zzb = new zzaly();

    @Override // com.google.android.gms.internal.ads.zzakr
    public final void zza(byte[] bArr, int i, int i2, zzakq zzakqVar, zzep zzepVar) {
        this.zza.zzI(bArr, i2 + i);
        this.zza.zzK(i);
        ArrayList arrayList = new ArrayList();
        try {
            zzfp zzfpVar = this.zza;
            int zzd = zzfpVar.zzd();
            Charset charset = zzfwq.zzc;
            String zzy = zzfpVar.zzy(charset);
            if (zzy == null || !zzy.startsWith(new ObfuscatedString(new long[]{-4989277549755535570L, 2018051171790942348L}).toString())) {
                zzfpVar.zzK(zzd);
                throw zzcc.zza(new ObfuscatedString(new long[]{-5221196888530743864L, 7017767729062499307L, -7322919260858691410L, 4318450362043094782L}).toString().concat(String.valueOf(zzfpVar.zzy(charset))), null);
            }
            do {
            } while (!TextUtils.isEmpty(this.zza.zzy(zzfwq.zzc)));
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                zzfp zzfpVar2 = this.zza;
                char c = 65535;
                int i3 = 0;
                while (c == 65535) {
                    i3 = zzfpVar2.zzd();
                    String zzy2 = zzfpVar2.zzy(zzfwq.zzc);
                    if (zzy2 == null) {
                        c = 0;
                    } else if (new ObfuscatedString(new long[]{8853550221553893733L, 1420482276432275016L}).toString().equals(zzy2)) {
                        c = 2;
                    } else if (zzy2.startsWith(new ObfuscatedString(new long[]{2402941052714426825L, -7300238544299859943L}).toString())) {
                        c = 1;
                    } else {
                        c = 3;
                    }
                }
                zzfpVar2.zzK(i3);
                if (c != 0) {
                    if (c == 1) {
                        do {
                        } while (!TextUtils.isEmpty(this.zza.zzy(zzfwq.zzc)));
                    } else if (c == 2) {
                        if (arrayList2.isEmpty()) {
                            this.zza.zzy(zzfwq.zzc);
                            arrayList.addAll(this.zzb.zzb(this.zza));
                        } else {
                            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-1755379559898378713L, -3461836486874174044L, 2609591817610205923L, 9089520849606978618L, 3810251791247295595L, 8328539544562755671L, -4730365790186704369L}).toString());
                        }
                    } else {
                        zzama zzc = zzamh.zzc(this.zza, arrayList);
                        if (zzc != null) {
                            arrayList2.add(zzc);
                        }
                    }
                } else {
                    zzakl.zza(new zzaml(arrayList2), zzakqVar, zzepVar);
                    return;
                }
            }
        } catch (zzcc e) {
            throw new IllegalArgumentException(e);
        }
    }
}
