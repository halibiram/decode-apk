package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgzp;
import com.google.android.gms.internal.ads.zzgzu;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;

/* loaded from: classes2.dex */
public class zzgzp<MessageType extends zzgzu<MessageType, BuilderType>, BuilderType extends zzgzp<MessageType, BuilderType>> extends zzgxs<MessageType, BuilderType> {
    protected zzgzu zza;
    private final zzgzu zzb;

    public zzgzp(MessageType messagetype) {
        this.zzb = messagetype;
        if (!messagetype.zzaY()) {
            this.zza = messagetype.zzaD();
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{8232734653369114685L, -8029899217137723591L, -4163892969353550321L, 7485750800747288801L, -8633480013623421800L, 3827931064880616042L}).toString());
    }

    private static void zza(Object obj, Object obj2) {
        zzhbn.zza().zzb(obj.getClass()).zzg(obj, obj2);
    }

    @Override // com.google.android.gms.internal.ads.zzgxs
    /* renamed from: zzai, reason: merged with bridge method [inline-methods] */
    public final zzgzp clone() {
        zzgzp zzgzpVar = (zzgzp) this.zzb.zzb(5, null, null);
        zzgzpVar.zza = zzan();
        return zzgzpVar;
    }

    public final zzgzp zzaj(zzgzu zzgzuVar) {
        if (!this.zzb.equals(zzgzuVar)) {
            if (!this.zza.zzaY()) {
                zzaq();
            }
            zza(this.zza, zzgzuVar);
        }
        return this;
    }

    public final zzgzp zzak(byte[] bArr, int i, int i2, zzgzf zzgzfVar) {
        if (!this.zza.zzaY()) {
            zzaq();
        }
        try {
            zzhbn.zza().zzb(this.zza.getClass()).zzi(this.zza, bArr, 0, i2, new zzgxx(zzgzfVar));
            return this;
        } catch (zzhag e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException(new ObfuscatedString(new long[]{6383841328587681741L, -6557835887947757157L, -428066196226937517L, 7197483940966114857L, -8652182072906082493L, -4342248465027412785L, 123927070028208684L, 2513150346687132090L}).toString(), e2);
        } catch (IndexOutOfBoundsException unused) {
            throw zzhag.zzj();
        }
    }

    public final MessageType zzal() {
        MessageType zzan = zzan();
        if (zzan.zzaX()) {
            return zzan;
        }
        throw new zzhco(zzan);
    }

    @Override // com.google.android.gms.internal.ads.zzhbd
    /* renamed from: zzam, reason: merged with bridge method [inline-methods] */
    public MessageType zzan() {
        if (!this.zza.zzaY()) {
            return (MessageType) this.zza;
        }
        this.zza.zzaS();
        return (MessageType) this.zza;
    }

    public final void zzap() {
        if (!this.zza.zzaY()) {
            zzaq();
        }
    }

    public void zzaq() {
        zzgzu zzaD = this.zzb.zzaD();
        zza(zzaD, this.zza);
        this.zza = zzaD;
    }

    @Override // com.google.android.gms.internal.ads.zzhbf
    public final /* synthetic */ zzhbe zzbk() {
        throw null;
    }
}
