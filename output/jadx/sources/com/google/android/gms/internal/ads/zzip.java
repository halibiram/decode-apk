package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzip {
    private final AudioManager zza;
    private final zzin zzb;

    @Nullable
    private zzio zzc;
    private int zzd;
    private float zze = 1.0f;

    public zzip(Context context, Handler handler, zzio zzioVar) {
        AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService(new ObfuscatedString(new long[]{2221446962367714933L, 6623209352668709782L}).toString());
        audioManager.getClass();
        this.zza = audioManager;
        this.zzc = zzioVar;
        this.zzb = new zzin(this, handler);
        this.zzd = 0;
    }

    public static /* bridge */ /* synthetic */ void zzc(zzip zzipVar, int i) {
        if (i != -3 && i != -2) {
            if (i != -1) {
                if (i != 1) {
                    zzff.zzf(new ObfuscatedString(new long[]{-6048301869419479883L, -6611275792665894657L, -1769402210337969310L, 5140551828121573400L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{8186456375241928037L, -348373654138620337L, -5386195776069196767L, 328138107897776742L, 2443534572142498349L}), new StringBuilder(), i));
                    return;
                } else {
                    zzipVar.zzg(1);
                    zzipVar.zzf(1);
                    return;
                }
            }
            zzipVar.zzf(-1);
            zzipVar.zze();
            return;
        }
        if (i != -2) {
            zzipVar.zzg(3);
        } else {
            zzipVar.zzf(0);
            zzipVar.zzg(2);
        }
    }

    private final void zze() {
        if (this.zzd == 0) {
            return;
        }
        if (zzfy.zza < 26) {
            this.zza.abandonAudioFocus(this.zzb);
        }
        zzg(0);
    }

    private final void zzf(int i) {
        int zzX;
        zzio zzioVar = this.zzc;
        if (zzioVar != null) {
            zzkk zzkkVar = (zzkk) zzioVar;
            boolean zzv = zzkkVar.zza.zzv();
            zzX = zzko.zzX(zzv, i);
            zzkkVar.zza.zzak(zzv, i, zzX);
        }
    }

    private final void zzg(int i) {
        float f;
        if (this.zzd != i) {
            this.zzd = i;
            if (i == 3) {
                f = 0.2f;
            } else {
                f = 1.0f;
            }
            if (this.zze != f) {
                this.zze = f;
                zzio zzioVar = this.zzc;
                if (zzioVar != null) {
                    ((zzkk) zzioVar).zza.zzah();
                }
            }
        }
    }

    public final float zza() {
        return this.zze;
    }

    public final int zzb(boolean z, int i) {
        zze();
        if (z) {
            return 1;
        }
        return -1;
    }

    public final void zzd() {
        this.zzc = null;
        zze();
    }
}
