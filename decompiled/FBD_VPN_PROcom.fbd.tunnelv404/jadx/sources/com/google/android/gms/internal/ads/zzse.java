package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.HandlerThread;
import android.os.Trace;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzse implements zzsq {
    private final zzfxu zzb;
    private final zzfxu zzc;
    private boolean zzd;

    public zzse(int i) {
        zzsc zzscVar = new zzsc(i);
        zzsd zzsdVar = new zzsd(i);
        this.zzb = zzscVar;
        this.zzc = zzsdVar;
        this.zzd = true;
    }

    public static /* synthetic */ HandlerThread zza(int i) {
        String zzr;
        zzr = zzsg.zzr(i, new ObfuscatedString(new long[]{-6458990866033227743L, 8279050373583229542L, -8968850791636055096L, 5234462317393354791L, -8882584275609276367L, -5207710796426011850L}).toString());
        return new HandlerThread(zzr);
    }

    public static /* synthetic */ HandlerThread zzb(int i) {
        String zzr;
        zzr = zzsg.zzr(i, new ObfuscatedString(new long[]{-173047548524144922L, -4305289619807660341L, 2425549166291431793L, 559519134916108107L, -438545136601029492L, 8088336423514118219L}).toString());
        return new HandlerThread(zzr);
    }

    public final zzsg zzc(zzsp zzspVar) {
        MediaCodec mediaCodec;
        zzss zzskVar;
        int i;
        zzsg zzsgVar;
        String str = zzspVar.zza.zza;
        zzsg zzsgVar2 = null;
        try {
            String str2 = new ObfuscatedString(new long[]{4470371143777025709L, -6834181401956642153L, 7019076060804142058L}).toString() + str;
            int i2 = zzfy.zza;
            Trace.beginSection(str2);
            mediaCodec = MediaCodec.createByCodecName(str);
            try {
            } catch (Exception e) {
                e = e;
            }
        } catch (Exception e2) {
            e = e2;
            mediaCodec = null;
        }
        try {
            if (this.zzd) {
                zzam zzamVar = zzspVar.zzc;
                if (zzfy.zza >= 34 && zzcb.zzh(zzamVar.zzm)) {
                    zzskVar = new zztq(mediaCodec);
                    i = 4;
                    zzsgVar = new zzsg(mediaCodec, zza(((zzsc) this.zzb).zza), zzskVar, null);
                    Trace.endSection();
                    zzsg.zzh(zzsgVar, zzspVar.zzb, zzspVar.zzd, null, i);
                    return zzsgVar;
                }
            }
            Trace.endSection();
            zzsg.zzh(zzsgVar, zzspVar.zzb, zzspVar.zzd, null, i);
            return zzsgVar;
        } catch (Exception e3) {
            e = e3;
            zzsgVar2 = zzsgVar;
            if (zzsgVar2 == null) {
                if (mediaCodec != null) {
                    mediaCodec.release();
                }
            } else {
                zzsgVar2.zzl();
            }
            throw e;
        }
        zzskVar = new zzsk(mediaCodec, zzb(((zzsd) this.zzc).zza));
        i = 0;
        zzsgVar = new zzsg(mediaCodec, zza(((zzsc) this.zzb).zza), zzskVar, null);
    }

    public final void zzd(boolean z) {
        this.zzd = true;
    }
}
