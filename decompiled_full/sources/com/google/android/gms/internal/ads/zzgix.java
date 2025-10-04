package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzgix {

    @Nullable
    private zzgji zza = null;

    @Nullable
    private zzgxr zzb = null;

    @Nullable
    private Integer zzc = null;

    public /* synthetic */ zzgix(zzgiw zzgiwVar) {
    }

    public final zzgix zza(@Nullable Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzgix zzb(zzgxr zzgxrVar) {
        this.zzb = zzgxrVar;
        return this;
    }

    public final zzgix zzc(zzgji zzgjiVar) {
        this.zza = zzgjiVar;
        return this;
    }

    public final zzgiz zzd() {
        zzgxr zzgxrVar;
        zzgxq zzb;
        zzgji zzgjiVar = this.zza;
        if (zzgjiVar != null && (zzgxrVar = this.zzb) != null) {
            if (zzgjiVar.zzb() == zzgxrVar.zza()) {
                if (zzgjiVar.zza() && this.zzc == null) {
                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{-3698094560912055114L, 5434925354873864039L, -7349888891166943658L, 2783650297618636546L, -4769033867854543224L, -8012343414180776018L, 9208494576735295481L, -2920570056869510811L, -4232048836924227992L, -317467297946709134L, -6750871770472430134L}).toString());
                }
                if (!this.zza.zza() && this.zzc != null) {
                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{5170000207864060429L, 8248974242764122807L, -4905780943513748448L, -4483289273019571026L, -5134680035245262208L, -4641496615409912415L, 1601757008324368554L, -5232497039561638923L, 2084088195952735103L, 5217365608707548556L, 3597722673398954867L}).toString());
                }
                if (this.zza.zzd() == zzgjg.zzc) {
                    zzb = zzgxq.zzb(new byte[0]);
                } else if (this.zza.zzd() == zzgjg.zzb) {
                    zzb = zzgxq.zzb(ByteBuffer.allocate(5).put((byte) 0).putInt(this.zzc.intValue()).array());
                } else if (this.zza.zzd() == zzgjg.zza) {
                    zzb = zzgxq.zzb(ByteBuffer.allocate(5).put((byte) 1).putInt(this.zzc.intValue()).array());
                } else {
                    throw new IllegalStateException(new ObfuscatedString(new long[]{1864377181404415223L, -955840760633437641L, 5542050261744885111L, -7823573625322523608L, 1438366483068430121L, -3903967268352569299L}).toString().concat(String.valueOf(this.zza.zzd())));
                }
                return new zzgiz(this.zza, this.zzb, zzb, this.zzc, null);
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-1844267388113532703L, -2356306644014160866L, 7668955055689060408L, 2636892403158415801L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{2256015481134174039L, 6588620604449564956L, -3653326861175524859L, 790365793814589035L, 1556408460782052640L, 3241586066164947566L, 8514058276547521944L, 1574087763598158265L}).toString());
    }

    private zzgix() {
    }
}
