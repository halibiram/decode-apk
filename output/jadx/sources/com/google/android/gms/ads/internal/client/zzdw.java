package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzdw {
    private String zzg;
    private String zzi;
    private String zzj;
    private boolean zzl;
    private String zzm;
    private final HashSet zza = new HashSet();
    private final Bundle zzb = new Bundle();
    private final HashMap zzc = new HashMap();
    private final HashSet zzd = new HashSet();
    private final Bundle zze = new Bundle();
    private final HashSet zzf = new HashSet();
    private final List zzh = new ArrayList();
    private int zzk = -1;
    private int zzn = 60000;

    public final void zzA(String str) {
        this.zzi = str;
    }

    public final void zzB(String str) {
        this.zzj = str;
    }

    @Deprecated
    public final void zzC(boolean z) {
        this.zzk = z ? 1 : 0;
    }

    public final void zzn(String str) {
        this.zzf.add(str);
    }

    public final void zzo(Class cls, Bundle bundle) {
        if (this.zzb.getBundle(new ObfuscatedString(new long[]{1063309693229540107L, 8526320720675249150L, 8083412688858680327L, 936891067198078677L, 2788283287253557897L, -5946103061233741424L, 7674143880257571288L, -5436869134072809616L, 6168191859117323393L, -4534944757004084612L}).toString()) == null) {
            this.zzb.putBundle(new ObfuscatedString(new long[]{8610842542439898368L, -2374281423097235542L, -3376850639527005431L, 6141762728636048073L, -5226447777936063625L, -9040069240720827823L, -8288594439623400579L, -6523755659158972278L, -32680825797291220L, 5788594665009399406L}).toString(), new Bundle());
        }
        Bundle bundle2 = this.zzb.getBundle(new ObfuscatedString(new long[]{-8211753575726738845L, -2335579270372190450L, -8941709938955965176L, 211801988601393962L, -8040285581151010889L, -6772011769333566540L, -5698939259533845977L, 6835113321523213L, -5782532587050835653L, -313042984104557730L}).toString());
        Preconditions.checkNotNull(bundle2);
        bundle2.putBundle(cls.getName(), bundle);
    }

    public final void zzp(String str, String str2) {
        this.zze.putString(str, str2);
    }

    public final void zzq(String str) {
        this.zza.add(str);
    }

    public final void zzr(Class cls, @Nullable Bundle bundle) {
        this.zzb.putBundle(cls.getName(), bundle);
    }

    @Deprecated
    public final void zzs(NetworkExtras networkExtras) {
        this.zzc.put(networkExtras.getClass(), networkExtras);
    }

    public final void zzt(String str) {
        this.zzd.add(str);
    }

    public final void zzu(String str) {
        this.zzd.remove(new ObfuscatedString(new long[]{5054493894284751930L, 8178207579352699898L, -7970392022934669889L, -5995210528031596464L, 9005604612723789403L}).toString());
    }

    public final void zzv(String str) {
        this.zzm = str;
    }

    public final void zzw(String str) {
        this.zzg = str;
    }

    public final void zzx(int i) {
        this.zzn = i;
    }

    @Deprecated
    public final void zzy(boolean z) {
        this.zzl = z;
    }

    public final void zzz(List list) {
        this.zzh.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (TextUtils.isEmpty(str)) {
                zzcec.zzj(new ObfuscatedString(new long[]{-6988387855204080392L, -5762670889185735179L, -3422422266519272050L, -3218747727954147056L, 2959161618755517416L, 7289169650753106295L, 3382465469282376721L, -1380424557267887746L}).toString());
            } else {
                this.zzh.add(str);
            }
        }
    }
}
