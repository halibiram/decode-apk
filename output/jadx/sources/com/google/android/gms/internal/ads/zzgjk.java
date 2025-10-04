package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzgjk {

    @Nullable
    private zzgjv zza = null;

    @Nullable
    private zzgxr zzb = null;

    @Nullable
    private Integer zzc = null;

    public /* synthetic */ zzgjk(zzgjj zzgjjVar) {
    }

    public final zzgjk zza(@Nullable Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzgjk zzb(zzgxr zzgxrVar) {
        this.zzb = zzgxrVar;
        return this;
    }

    public final zzgjk zzc(zzgjv zzgjvVar) {
        this.zza = zzgjvVar;
        return this;
    }

    public final zzgjm zzd() {
        zzgxr zzgxrVar;
        zzgxq zzb;
        zzgjv zzgjvVar = this.zza;
        if (zzgjvVar != null && (zzgxrVar = this.zzb) != null) {
            if (zzgjvVar.zzb() == zzgxrVar.zza()) {
                if (zzgjvVar.zza() && this.zzc == null) {
                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{-8912453631714325774L, 6126073556313352211L, 3992235042695943008L, 1655621474348101229L, 3091654642190084098L, 4050242473496127908L, 4187608204036211892L, -1541519408304588684L, -7609066719956426643L, 2668371122657624771L, -1495706379919310537L}).toString());
                }
                if (!this.zza.zza() && this.zzc != null) {
                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{-7423677522303889781L, -1306758845907712507L, -7686416513753581827L, -6291437914057820397L, -8582936538282414405L, -2852624701717370350L, -2805055731278085076L, -111755515155579064L, -7796678884969153173L, -8124004781723418557L, 4990751923638863041L}).toString());
                }
                if (this.zza.zzc() == zzgjt.zzc) {
                    zzb = zzgxq.zzb(new byte[0]);
                } else if (this.zza.zzc() == zzgjt.zzb) {
                    zzb = zzgxq.zzb(ByteBuffer.allocate(5).put((byte) 0).putInt(this.zzc.intValue()).array());
                } else if (this.zza.zzc() == zzgjt.zza) {
                    zzb = zzgxq.zzb(ByteBuffer.allocate(5).put((byte) 1).putInt(this.zzc.intValue()).array());
                } else {
                    throw new IllegalStateException(new ObfuscatedString(new long[]{-6066786412476015951L, 5985205487855181703L, -2637762701130616636L, -1414854871696183424L, 7343881946534284271L, -6071082296845154786L}).toString().concat(String.valueOf(this.zza.zzc())));
                }
                return new zzgjm(this.zza, this.zzb, zzb, this.zzc, null);
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-4180872306260386295L, 4804093937578966267L, 4623736170234375037L, 5164390040005007436L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-4060891953846090088L, 6080929550619367993L, 2791474020621389052L, 489109201015006974L, -7878193016957513847L, -3779786863612312956L, -1006707840382042866L, 627798679719113548L}).toString());
    }

    private zzgjk() {
    }
}
