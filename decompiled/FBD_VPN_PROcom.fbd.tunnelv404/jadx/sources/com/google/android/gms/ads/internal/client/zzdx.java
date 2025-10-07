package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.internal.ads.zzcdv;
import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* loaded from: classes2.dex */
public final class zzdx {
    private final String zza;
    private final List zzb;
    private final Set zzc;
    private final Bundle zzd;
    private final Map zze;
    private final String zzf;
    private final String zzg;

    @Nullable
    @NotOnlyInitialized
    private final SearchAdRequest zzh;
    private final int zzi;
    private final Set zzj;
    private final Bundle zzk;
    private final Set zzl;
    private final boolean zzm;
    private final String zzn;
    private final int zzo;

    public zzdx(zzdw zzdwVar, @Nullable SearchAdRequest searchAdRequest) {
        String str;
        List list;
        HashSet hashSet;
        Bundle bundle;
        HashMap hashMap;
        String str2;
        String str3;
        int i;
        HashSet hashSet2;
        Bundle bundle2;
        HashSet hashSet3;
        boolean z;
        String str4;
        int i2;
        str = zzdwVar.zzg;
        this.zza = str;
        list = zzdwVar.zzh;
        this.zzb = list;
        hashSet = zzdwVar.zza;
        this.zzc = DesugarCollections.unmodifiableSet(hashSet);
        bundle = zzdwVar.zzb;
        this.zzd = bundle;
        hashMap = zzdwVar.zzc;
        this.zze = DesugarCollections.unmodifiableMap(hashMap);
        str2 = zzdwVar.zzi;
        this.zzf = str2;
        str3 = zzdwVar.zzj;
        this.zzg = str3;
        this.zzh = searchAdRequest;
        i = zzdwVar.zzk;
        this.zzi = i;
        hashSet2 = zzdwVar.zzd;
        this.zzj = DesugarCollections.unmodifiableSet(hashSet2);
        bundle2 = zzdwVar.zze;
        this.zzk = bundle2;
        hashSet3 = zzdwVar.zzf;
        this.zzl = DesugarCollections.unmodifiableSet(hashSet3);
        z = zzdwVar.zzl;
        this.zzm = z;
        str4 = zzdwVar.zzm;
        this.zzn = str4;
        i2 = zzdwVar.zzn;
        this.zzo = i2;
    }

    public final int zza() {
        return this.zzo;
    }

    public final int zzb() {
        return this.zzi;
    }

    @Nullable
    public final Bundle zzc(Class cls) {
        Bundle bundle = this.zzd.getBundle(new ObfuscatedString(new long[]{-2476901129259189646L, 6955474303950628680L, 2783109165672007047L, -7048597054036737262L, -5177085178304306587L, -2421954663795904731L, 614054833164783742L, 8317236918460840527L, 6467905208649126827L, 6388571938897508065L}).toString());
        if (bundle != null) {
            return bundle.getBundle(cls.getName());
        }
        return null;
    }

    public final Bundle zzd() {
        return this.zzk;
    }

    @Nullable
    public final Bundle zze(Class cls) {
        return this.zzd.getBundle(cls.getName());
    }

    public final Bundle zzf() {
        return this.zzd;
    }

    @Nullable
    @Deprecated
    public final NetworkExtras zzg(Class cls) {
        return (NetworkExtras) this.zze.get(cls);
    }

    @Nullable
    public final SearchAdRequest zzh() {
        return this.zzh;
    }

    @Nullable
    public final String zzi() {
        return this.zzn;
    }

    public final String zzj() {
        return this.zza;
    }

    public final String zzk() {
        return this.zzf;
    }

    public final String zzl() {
        return this.zzg;
    }

    public final List zzm() {
        return new ArrayList(this.zzb);
    }

    public final Set zzn() {
        return this.zzl;
    }

    public final Set zzo() {
        return this.zzc;
    }

    @Deprecated
    public final boolean zzp() {
        return this.zzm;
    }

    public final boolean zzq(Context context) {
        RequestConfiguration zzc = zzej.zzf().zzc();
        zzay.zzb();
        Set set = this.zzj;
        String zzy = zzcdv.zzy(context);
        if (!set.contains(zzy) && !zzc.getTestDeviceIds().contains(zzy)) {
            return false;
        }
        return true;
    }
}
