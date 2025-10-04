package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzhb {
    public static final /* synthetic */ int zzj = 0;
    public final Uri zza;
    public final int zzb;

    @Nullable
    public final byte[] zzc;
    public final Map zzd;

    @Deprecated
    public final long zze;
    public final long zzf;
    public final long zzg;

    @Nullable
    public final String zzh;
    public final int zzi;

    static {
        zzbq.zzb(new ObfuscatedString(new long[]{8590777929853076261L, 1819032707830528989L, -231823323859887708L, 4079275509515750253L}).toString());
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zza);
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{8996903479768286170L, -7829580659313291000L, 941464287197201121L}).toString());
        sb.append(new ObfuscatedString(new long[]{5046033496371829563L, -3884229547579115127L}).toString());
        sb.append(new ObfuscatedString(new long[]{621545296810400377L, 5882005716284808973L}).toString());
        sb.append(valueOf);
        sb.append(new ObfuscatedString(new long[]{-8026833057269071134L, 8942863043830194555L}).toString());
        sb.append(this.zzf);
        sb.append(new ObfuscatedString(new long[]{-2921087763647801436L, 5909330080548318304L}).toString());
        sb.append(this.zzg);
        sb.append(new ObfuscatedString(new long[]{629426248553372278L, -7702382843403469315L}).toString());
        sb.append(this.zzi);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4036698092989361167L, -8725233905756107866L}), sb);
    }

    public final boolean zza(int i) {
        return (this.zzi & i) == i;
    }

    public zzhb(Uri uri) {
        this(uri, 0L, 1, null, Collections.emptyMap(), 0L, -1L, null, 0, null);
    }

    @Deprecated
    public zzhb(Uri uri, @Nullable byte[] bArr, long j, long j2, long j3, @Nullable String str, int i) {
        this(uri, j - j2, 1, null, Collections.emptyMap(), j2, j3, null, i, null);
    }

    private zzhb(Uri uri, long j, int i, @Nullable byte[] bArr, Map map, long j2, long j3, @Nullable String str, int i2, @Nullable Object obj) {
        long j4 = j + j2;
        boolean z = false;
        zzek.zzd(j4 >= 0);
        zzek.zzd(j2 >= 0);
        if (j3 <= 0) {
            j3 = j3 == -1 ? -1L : j3;
            zzek.zzd(z);
            this.zza = uri;
            this.zzb = 1;
            this.zzc = null;
            this.zzd = DesugarCollections.unmodifiableMap(new HashMap(map));
            this.zzf = j2;
            this.zze = j4;
            this.zzg = j3;
            this.zzh = null;
            this.zzi = i2;
        }
        z = true;
        zzek.zzd(z);
        this.zza = uri;
        this.zzb = 1;
        this.zzc = null;
        this.zzd = DesugarCollections.unmodifiableMap(new HashMap(map));
        this.zzf = j2;
        this.zze = j4;
        this.zzg = j3;
        this.zzh = null;
        this.zzi = i2;
    }
}
