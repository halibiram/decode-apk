package com.google.android.gms.internal.ads;

import android.util.Base64OutputStream;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

@VisibleForTesting
/* loaded from: classes2.dex */
final class zzazt {

    @VisibleForTesting
    ByteArrayOutputStream zza = new ByteArrayOutputStream(4096);

    @VisibleForTesting
    Base64OutputStream zzb = new Base64OutputStream(this.zza, 10);

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        String obfuscatedString;
        try {
            this.zzb.close();
        } catch (IOException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-7065456790544170399L, -2701258258495386445L, 3500415031538237013L, 8101818939640329051L, 8790825968099533710L, 144981851082748998L, -8418761641170447693L}).toString(), e);
        }
        try {
            try {
                this.zza.close();
                obfuscatedString = this.zza.toString();
            } catch (IOException e2) {
                zzcec.zzh(new ObfuscatedString(new long[]{-7764070611761319589L, 4484309357062777639L, -1483456091086894926L, 2135153082115946175L, -1220129817696777205L, 6511954243982568936L, -8292165605682258453L}).toString(), e2);
                obfuscatedString = new ObfuscatedString(new long[]{-208143710149269986L}).toString();
            }
            return obfuscatedString;
        } finally {
            this.zza = null;
            this.zzb = null;
        }
    }
}
