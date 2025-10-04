package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzjy;
import com.google.android.gms.internal.measurement.zzkc;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;

/* loaded from: classes2.dex */
public class zzjy<MessageType extends zzkc<MessageType, BuilderType>, BuilderType extends zzjy<MessageType, BuilderType>> extends zzik<MessageType, BuilderType> {
    protected zzkc zza;
    protected boolean zzb = false;
    private final zzkc zzc;

    public zzjy(MessageType messagetype) {
        this.zzc = messagetype;
        this.zza = (zzkc) messagetype.zzl(4, null, null);
    }

    private static final void zza(zzkc zzkcVar, zzkc zzkcVar2) {
        zzlr.zza().zzb(zzkcVar.getClass()).zzg(zzkcVar, zzkcVar2);
    }

    @Override // com.google.android.gms.internal.measurement.zzik
    /* renamed from: zzaB, reason: merged with bridge method [inline-methods] */
    public final zzjy clone() {
        zzjy zzjyVar = (zzjy) this.zzc.zzl(5, null, null);
        zzjyVar.zzaC(zzaG());
        return zzjyVar;
    }

    public final zzjy zzaC(zzkc zzkcVar) {
        if (this.zzb) {
            zzaI();
            this.zzb = false;
        }
        zza(this.zza, zzkcVar);
        return this;
    }

    public final zzjy zzaD(byte[] bArr, int i, int i2, zzjo zzjoVar) {
        if (this.zzb) {
            zzaI();
            this.zzb = false;
        }
        try {
            zzlr.zza().zzb(this.zza.getClass()).zzh(this.zza, bArr, 0, i2, new zzio(zzjoVar));
            return this;
        } catch (zzkm e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException(new ObfuscatedString(new long[]{-5756868064394326392L, -8216538682676768210L, 8651860697361984398L, -801722650909280141L, -1101496487399467060L, -512307113443451480L, -8075706423758744251L, -5232485902817454240L}).toString(), e2);
        } catch (IndexOutOfBoundsException unused) {
            throw zzkm.zzf();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x002e, code lost:
    
        if (r3 != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final MessageType zzaE() {
        MessageType messagetype;
        MessageType zzaG = zzaG();
        byte byteValue = ((Byte) zzaG.zzl(1, null, null)).byteValue();
        if (byteValue != 1) {
            if (byteValue != 0) {
                boolean zzk = zzlr.zza().zzb(zzaG.getClass()).zzk(zzaG);
                if (true != zzk) {
                    messagetype = null;
                } else {
                    messagetype = zzaG;
                }
                zzaG.zzl(2, messagetype, null);
            }
            throw new zzmk(zzaG);
        }
        return zzaG;
    }

    @Override // com.google.android.gms.internal.measurement.zzli
    /* renamed from: zzaF, reason: merged with bridge method [inline-methods] */
    public MessageType zzaG() {
        if (this.zzb) {
            return (MessageType) this.zza;
        }
        zzkc zzkcVar = this.zza;
        zzlr.zza().zzb(zzkcVar.getClass()).zzf(zzkcVar);
        this.zzb = true;
        return (MessageType) this.zza;
    }

    public void zzaI() {
        zzkc zzkcVar = (zzkc) this.zza.zzl(4, null, null);
        zza(zzkcVar, this.zza);
        this.zza = zzkcVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzik
    public final /* synthetic */ zzik zzav(zzil zzilVar) {
        zzaC((zzkc) zzilVar);
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzik
    public final /* bridge */ /* synthetic */ zzik zzaw(byte[] bArr, int i, int i2) {
        zzaD(bArr, 0, i2, zzjo.zza());
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzik
    public final /* bridge */ /* synthetic */ zzik zzax(byte[] bArr, int i, int i2, zzjo zzjoVar) {
        zzaD(bArr, 0, i2, zzjoVar);
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzlk
    public final /* synthetic */ zzlj zzbR() {
        return this.zzc;
    }
}
