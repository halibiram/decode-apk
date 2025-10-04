package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcgp implements AudioManager.OnAudioFocusChangeListener {
    private final AudioManager zza;
    private final zzcgo zzb;
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private float zzf = 1.0f;

    public zzcgp(Context context, zzcgo zzcgoVar) {
        this.zza = (AudioManager) context.getSystemService(new ObfuscatedString(new long[]{-4225860436226254734L, 2188041264979926009L}).toString());
        this.zzb = zzcgoVar;
    }

    private final void zzf() {
        boolean z = false;
        if (this.zzd && !this.zze && this.zzf > 0.0f) {
            if (!this.zzc) {
                AudioManager audioManager = this.zza;
                if (audioManager != null) {
                    if (audioManager.requestAudioFocus(this, 3, 2) == 1) {
                        z = true;
                    }
                    this.zzc = z;
                }
                this.zzb.zzn();
                return;
            }
            return;
        }
        if (this.zzc) {
            AudioManager audioManager2 = this.zza;
            if (audioManager2 != null) {
                if (audioManager2.abandonAudioFocus(this) == 0) {
                    z = true;
                }
                this.zzc = z;
            }
            this.zzb.zzn();
        }
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        boolean z;
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        this.zzc = z;
        this.zzb.zzn();
    }

    public final float zza() {
        float f = this.zze ? 0.0f : this.zzf;
        if (this.zzc) {
            return f;
        }
        return 0.0f;
    }

    public final void zzb() {
        this.zzd = true;
        zzf();
    }

    public final void zzc() {
        this.zzd = false;
        zzf();
    }

    public final void zzd(boolean z) {
        this.zze = z;
        zzf();
    }

    public final void zze(float f) {
        this.zzf = f;
        zzf();
    }
}
