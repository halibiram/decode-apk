package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzgpo {

    @Nullable
    private zzgpz zza = null;

    @Nullable
    private zzgxr zzb = null;

    @Nullable
    private Integer zzc = null;

    public /* synthetic */ zzgpo(zzgpn zzgpnVar) {
    }

    public final zzgpo zza(zzgxr zzgxrVar) {
        this.zzb = zzgxrVar;
        return this;
    }

    public final zzgpo zzb(@Nullable Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzgpo zzc(zzgpz zzgpzVar) {
        this.zza = zzgpzVar;
        return this;
    }

    public final zzgpq zzd() {
        zzgxr zzgxrVar;
        zzgxq zzb;
        zzgpz zzgpzVar = this.zza;
        if (zzgpzVar != null && (zzgxrVar = this.zzb) != null) {
            if (zzgpzVar.zzc() == zzgxrVar.zza()) {
                if (zzgpzVar.zza() && this.zzc == null) {
                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{7807396190183306282L, -3211144902467178256L, 4512371456729171682L, -887159666116055567L, 9103621333405796432L, -3067441604785143600L, 8294633257881296685L, 7457772298825633049L, -7582903969611327592L, -6732351765643541253L, -3669591299849192477L}).toString());
                }
                if (!this.zza.zza() && this.zzc != null) {
                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{-5524778813158721150L, 2734518015770790044L, -2410965755578256397L, 6469397858430316769L, 9078487864933132248L, -4734388835544528407L, 2176926467462348260L, -5198875434024318494L, -4365460225702934106L, 6320463327656206325L, 7152710149682177938L}).toString());
                }
                if (this.zza.zze() == zzgpx.zzd) {
                    zzb = zzgxq.zzb(new byte[0]);
                } else if (this.zza.zze() != zzgpx.zzc && this.zza.zze() != zzgpx.zzb) {
                    if (this.zza.zze() == zzgpx.zza) {
                        zzb = zzgxq.zzb(ByteBuffer.allocate(5).put((byte) 1).putInt(this.zzc.intValue()).array());
                    } else {
                        throw new IllegalStateException(new ObfuscatedString(new long[]{8213474228592647608L, 8559554576919471723L, 161943745750114001L, 7849398833367767524L, -5773830075348877253L, -6448419604677832435L, 8694707445761376306L}).toString().concat(String.valueOf(this.zza.zze())));
                    }
                } else {
                    zzb = zzgxq.zzb(ByteBuffer.allocate(5).put((byte) 0).putInt(this.zzc.intValue()).array());
                }
                return new zzgpq(this.zza, this.zzb, zzb, this.zzc, null);
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-1902235919563442543L, -9210678187465726719L, -2042303096877986327L, 8810316936356073393L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{3090567827589207278L, 3493784103017129038L, -4883486938051638318L, -6498858993884893675L, -8562384949890993807L, -7862334491483345537L, -3588707641662736666L, 5875045703338725678L}).toString());
    }

    private zzgpo() {
    }
}
