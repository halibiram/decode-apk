package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.io.UnsupportedEncodingException;
import java.util.Map;

/* loaded from: classes2.dex */
public class zzare extends zzaqa {
    private final Object zza;

    @Nullable
    @GuardedBy("mLock")
    private final zzaqf zzb;

    public zzare(int i, String str, zzaqf zzaqfVar, @Nullable zzaqe zzaqeVar) {
        super(i, str, zzaqeVar);
        this.zza = new Object();
        this.zzb = zzaqfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaqa
    public final zzaqg zzh(zzapw zzapwVar) {
        String str;
        String str2;
        try {
            byte[] bArr = zzapwVar.zzb;
            Map map = zzapwVar.zzc;
            String obfuscatedString = new ObfuscatedString(new long[]{-2634713737647711394L, -6472394242418355630L, 512364711214132096L}).toString();
            if (map != null && (str2 = (String) map.get(new ObfuscatedString(new long[]{8333624277686967733L, 8559002680048526836L, 2193483923116986536L}).toString())) != null) {
                String[] split = str2.split(new ObfuscatedString(new long[]{-881862405485901638L, 4186161110947183701L}).toString(), 0);
                int i = 1;
                while (true) {
                    if (i >= split.length) {
                        break;
                    }
                    String[] split2 = split[i].trim().split(new ObfuscatedString(new long[]{509373223068693490L, 6441495229624222377L}).toString(), 0);
                    if (split2.length == 2 && split2[0].equals(new ObfuscatedString(new long[]{-6279425449853046751L, 2157218131744427373L}).toString())) {
                        obfuscatedString = split2[1];
                        break;
                    }
                    i++;
                }
            }
            str = new String(bArr, obfuscatedString);
        } catch (UnsupportedEncodingException unused) {
            str = new String(zzapwVar.zzb);
        }
        return zzaqg.zzb(str, zzaqx.zzb(zzapwVar));
    }

    @Override // com.google.android.gms.internal.ads.zzaqa
    /* renamed from: zzz, reason: merged with bridge method [inline-methods] */
    public void zzo(String str) {
        zzaqf zzaqfVar;
        synchronized (this.zza) {
            zzaqfVar = this.zzb;
        }
        zzaqfVar.zza(str);
    }
}
