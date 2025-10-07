package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzgrz {

    @Nullable
    private ArrayList zza = new ArrayList();
    private zzgrw zzb = zzgrw.zza;

    @Nullable
    private Integer zzc = null;

    public final zzgrz zza(zzgge zzggeVar, int i, String str, String str2) {
        ArrayList arrayList = this.zza;
        if (arrayList != null) {
            arrayList.add(new zzgsb(zzggeVar, i, str, str2, null));
            return this;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-405996894160136259L, 2723464350600624329L, -5469623806451271188L, 657679073849750721L, 6822716059072114454L, -2095273441419988377L}).toString());
    }

    public final zzgrz zzb(zzgrw zzgrwVar) {
        if (this.zza != null) {
            this.zzb = zzgrwVar;
            return this;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{2511912608611697829L, -7217143530385997727L, -3377786629797592951L, 8911505907963562696L, 6567013011591791846L, 8193291735621078124L, 3815645137926074997L}).toString());
    }

    public final zzgrz zzc(int i) {
        if (this.zza != null) {
            this.zzc = Integer.valueOf(i);
            return this;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-4171697496044944911L, 7234390716352686083L, -521712237819302766L, 1318850360572761348L, 2481992289673989854L, 2277647281929144980L, -2930737695088862982L}).toString());
    }

    public final zzgsd zzd() {
        if (this.zza != null) {
            Integer num = this.zzc;
            if (num != null) {
                int intValue = num.intValue();
                ArrayList arrayList = this.zza;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    int zza = ((zzgsb) arrayList.get(i)).zza();
                    i++;
                    if (zza == intValue) {
                    }
                }
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{8690782896669628783L, -3284213347395602452L, 8476154260430469889L, 1081988875229864544L, 3393445304547043166L, 8427200060581407322L}).toString());
            }
            zzgsd zzgsdVar = new zzgsd(this.zzb, DesugarCollections.unmodifiableList(this.zza), this.zzc, null);
            this.zza = null;
            return zzgsdVar;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{925032340755857591L, 2474348996145240673L, -1427654270509584833L, 6614840940682805372L, 8131498686949237722L}).toString());
    }
}
