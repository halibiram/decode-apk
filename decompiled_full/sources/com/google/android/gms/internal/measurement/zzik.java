package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzik;
import com.google.android.gms.internal.measurement.zzil;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzik<MessageType extends zzil<MessageType, BuilderType>, BuilderType extends zzik<MessageType, BuilderType>> implements zzli {
    @Override // com.google.android.gms.internal.measurement.zzli
    public final /* synthetic */ zzli zzaA(byte[] bArr, zzjo zzjoVar) {
        return zzax(bArr, 0, bArr.length, zzjoVar);
    }

    @Override // 
    /* renamed from: zzau, reason: merged with bridge method [inline-methods] */
    public abstract zzik clone();

    public abstract zzik zzav(zzil zzilVar);

    public zzik zzaw(byte[] bArr, int i, int i2) {
        throw null;
    }

    public zzik zzax(byte[] bArr, int i, int i2, zzjo zzjoVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzli
    public final /* bridge */ /* synthetic */ zzli zzay(zzlj zzljVar) {
        if (zzbR().getClass().isInstance(zzljVar)) {
            return zzav((zzil) zzljVar);
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{7569727480455158674L, -2116333746776059708L, 8961954315584056713L, 7461408407975989223L, 4547990103054566596L, 4508408993811432487L, -8722643699510095256L, -5075144742339807995L, 3046080143953609746L}).toString());
    }

    @Override // com.google.android.gms.internal.measurement.zzli
    public final /* synthetic */ zzli zzaz(byte[] bArr) {
        return zzaw(bArr, 0, bArr.length);
    }
}
