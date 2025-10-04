package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzgig {

    @Nullable
    private zzgiq zza = null;

    @Nullable
    private zzgxr zzb = null;

    @Nullable
    private Integer zzc = null;

    public /* synthetic */ zzgig(zzgif zzgifVar) {
    }

    public final zzgig zza(@Nullable Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzgig zzb(zzgxr zzgxrVar) {
        this.zzb = zzgxrVar;
        return this;
    }

    public final zzgig zzc(zzgiq zzgiqVar) {
        this.zza = zzgiqVar;
        return this;
    }

    public final zzgii zzd() {
        zzgxr zzgxrVar;
        zzgxq zzb;
        zzgiq zzgiqVar = this.zza;
        if (zzgiqVar != null && (zzgxrVar = this.zzb) != null) {
            if (zzgiqVar.zzc() == zzgxrVar.zza()) {
                if (zzgiqVar.zza() && this.zzc == null) {
                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{6830970210971056197L, -1486318323574537865L, -6603312272685003574L, 9121548170460140247L, 1189503563159706878L, -4247825223588810410L, 6541691323183726009L, -3813920042130773520L, 7370215216171922813L, -309553914733033091L, -1719357822431375725L}).toString());
                }
                if (!this.zza.zza() && this.zzc != null) {
                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{6252420285617478760L, 5993483228448967074L, -3520482344685618504L, -5906135894435587485L, 5874876332258493786L, -3590604451745008210L, -6390754446654442805L, -6079704310475181544L, 2047573326223169677L, -6615636872952827167L, 7757793051157613657L}).toString());
                }
                if (this.zza.zzd() == zzgio.zzc) {
                    zzb = zzgxq.zzb(new byte[0]);
                } else if (this.zza.zzd() == zzgio.zzb) {
                    zzb = zzgxq.zzb(ByteBuffer.allocate(5).put((byte) 0).putInt(this.zzc.intValue()).array());
                } else if (this.zza.zzd() == zzgio.zza) {
                    zzb = zzgxq.zzb(ByteBuffer.allocate(5).put((byte) 1).putInt(this.zzc.intValue()).array());
                } else {
                    throw new IllegalStateException(new ObfuscatedString(new long[]{3817197090312216806L, -8670988151560853975L, -6077651652203833519L, 760633686193318290L, 4870617375630742131L, 7454556772595052544L}).toString().concat(String.valueOf(this.zza.zzd())));
                }
                return new zzgii(this.zza, this.zzb, zzb, this.zzc, null);
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-3797408823348389821L, -7488762691168720250L, 4776086204839781334L, -5760305131814910970L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-2103820798902289461L, -2655012668807469254L, -5609719768240618131L, 310219193080210261L, 5426628337968786757L, 4212878733764020885L, 5671307953250355301L, 7085249101506147106L}).toString());
    }

    private zzgig() {
    }
}
