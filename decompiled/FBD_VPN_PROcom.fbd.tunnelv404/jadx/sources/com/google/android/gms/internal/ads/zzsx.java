package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class zzsx extends Exception {

    @Nullable
    public final String zza;
    public final boolean zzb;

    @Nullable
    public final zzsv zzc;

    @Nullable
    public final String zzd;

    @Nullable
    public final zzsx zze;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzsx(zzam zzamVar, @Nullable Throwable th, boolean z, int i) {
        this(r4, th, r6, false, null, AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-7730285627689003912L, -7405055231577654627L, -4487975662581835422L, -856783318069077545L, 3095681297834888182L, -1106315890352298030L, 4975749537878097737L, -5687699097179750981L, -5459082440760824926L}), new StringBuilder(), r12), null);
        String zzamVar2 = zzamVar.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-103712611619561511L, 7775088423442777045L, -6603803861094715678L, -1698090090576347293L}).toString());
        sb.append(i);
        String m3336x1aebc6d9 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-4059348650420127851L, -4002214124688680929L}), sb, zzamVar2);
        String str = zzamVar.zzm;
        int abs = Math.abs(i);
    }

    public static /* bridge */ /* synthetic */ zzsx zza(zzsx zzsxVar, zzsx zzsxVar2) {
        return new zzsx(zzsxVar.getMessage(), zzsxVar.getCause(), zzsxVar.zza, false, zzsxVar.zzc, zzsxVar.zzd, zzsxVar2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzsx(zzam zzamVar, @Nullable Throwable th, boolean z, zzsv zzsvVar) {
        this(r4, th, r6, false, zzsvVar, th instanceof MediaCodec.CodecException ? ((MediaCodec.CodecException) th).getDiagnosticInfo() : null, null);
        String str = zzsvVar.zza;
        String zzamVar2 = zzamVar.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-5364209574036727800L, -4568738638675010685L, -2525535205393418753L, 2831082742365652085L}).toString());
        sb.append(str);
        String m3336x1aebc6d9 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-8219955690350184603L, 365258198369049104L}), sb, zzamVar2);
        String str2 = zzamVar.zzm;
        int i = zzfy.zza;
    }

    private zzsx(@Nullable String str, @Nullable Throwable th, @Nullable String str2, boolean z, @Nullable zzsv zzsvVar, @Nullable String str3, @Nullable zzsx zzsxVar) {
        super(str, th);
        this.zza = str2;
        this.zzb = false;
        this.zzc = zzsvVar;
        this.zzd = str3;
        this.zze = zzsxVar;
    }
}
