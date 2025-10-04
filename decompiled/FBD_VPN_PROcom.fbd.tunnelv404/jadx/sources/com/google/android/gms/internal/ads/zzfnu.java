package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Clock;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzfnu {
    private final zzemh zza;
    private final String zzb;
    private final String zzc;
    private final String zzd;
    private final Context zze;
    private final zzfgz zzf;
    private final zzfha zzg;
    private final Clock zzh;
    private final zzavi zzi;

    public zzfnu(zzemh zzemhVar, zzcei zzceiVar, String str, String str2, Context context, @Nullable zzfgz zzfgzVar, @Nullable zzfha zzfhaVar, Clock clock, zzavi zzaviVar) {
        this.zza = zzemhVar;
        this.zzb = zzceiVar.zza;
        this.zzc = str;
        this.zzd = str2;
        this.zze = context;
        this.zzf = zzfgzVar;
        this.zzg = zzfhaVar;
        this.zzh = clock;
        this.zzi = zzaviVar;
    }

    public static final List zzf(int i, int i2, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(zzj((String) it.next(), new ObfuscatedString(new long[]{-1489180667092221793L, -1077909019053239091L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-4481641273017659391L, -6294228030625515787L}), new StringBuilder(), i2)));
        }
        return arrayList;
    }

    public static final List zzg(List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(zzj((String) it.next(), new ObfuscatedString(new long[]{-6492016580533440949L, -5978785225240251861L, -8639251084667928502L}).toString(), str));
        }
        return arrayList;
    }

    public static final List zzh(List list, long j) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(zzj((String) it.next(), new ObfuscatedString(new long[]{3165172941502440826L, -5953448128413792844L}).toString(), Long.toString(j, 10)));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static String zzi(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return new ObfuscatedString(new long[]{-163295410558045310L}).toString();
        }
        if (zzceb.zzk()) {
            return new ObfuscatedString(new long[]{-684606344766091778L, 5890775165779447549L, 82869783826347264L, 661877804118343497L}).toString();
        }
        return str;
    }

    private static String zzj(String str, String str2, @Nullable String str3) {
        if (true == TextUtils.isEmpty(str3)) {
            str3 = new ObfuscatedString(new long[]{-1908149594819511693L}).toString();
        }
        return str.replaceAll(str2, str3);
    }

    public final List zzc(zzfgy zzfgyVar, zzfgm zzfgmVar, List list) {
        return zzd(zzfgyVar, zzfgmVar, false, new ObfuscatedString(new long[]{2474561595707463733L}).toString(), new ObfuscatedString(new long[]{-4923608764137827001L}).toString(), list);
    }

    public final List zzd(zzfgy zzfgyVar, @Nullable zzfgm zzfgmVar, boolean z, @Nullable String str, @Nullable String str2, List list) {
        String obfuscatedString;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (true != z) {
                obfuscatedString = new ObfuscatedString(new long[]{3445929544449871869L, -3938770591728624540L}).toString();
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{5170786276468540468L, 6401097640376427427L}).toString();
            }
            String zzj = zzj(zzj(zzj((String) it.next(), new ObfuscatedString(new long[]{-5044629598684198256L, 2151576871425850967L, 7608609822563363793L}).toString(), zzfgyVar.zza.zza.zzf), new ObfuscatedString(new long[]{4125142254927309548L, -1652672245702447435L, -7274193174535747389L, 4565147872009210722L}).toString(), obfuscatedString), new ObfuscatedString(new long[]{4256627246453019035L, 4536702405139058476L, -9019368367941217495L}).toString(), this.zzb);
            if (zzfgmVar != null) {
                zzj = zzccj.zzc(zzj(zzj(zzj(zzj, new ObfuscatedString(new long[]{-2266020936073230314L, -85046040131897626L, 6660864137224170057L}).toString(), zzfgmVar.zzz), new ObfuscatedString(new long[]{3544555328159300429L, -3436311284004679762L, 3810389973076993321L}).toString(), zzfgmVar.zzy), new ObfuscatedString(new long[]{-3795746065972141312L, -8080466090260838898L, 5242501277668912047L}).toString(), zzfgmVar.zzx), this.zze, zzfgmVar.zzX);
            }
            String zzj2 = zzj(zzj(zzj(zzj(zzj, new ObfuscatedString(new long[]{-539450789355318936L, 1407318068048140569L, -7525299500213892888L}).toString(), this.zza.zzg()), new ObfuscatedString(new long[]{6990162857242835494L, 3394261510875683800L}).toString(), Long.toString(this.zza.zza(), 10)), new ObfuscatedString(new long[]{-6138203569085553575L, -2124515917199485242L, 526274237059836781L}).toString(), this.zzc), new ObfuscatedString(new long[]{-552823168367999561L, -7501148395723110872L, -6152143045346020621L}).toString(), this.zzd);
            boolean z2 = false;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdp)).booleanValue() && !TextUtils.isEmpty(str)) {
                z2 = true;
            }
            boolean isEmpty = TextUtils.isEmpty(str2);
            boolean z3 = !isEmpty;
            if (!z2) {
                if (!isEmpty) {
                    z3 = true;
                } else {
                    arrayList.add(zzj2);
                }
            }
            if (this.zzi.zzf(Uri.parse(zzj2))) {
                Uri.Builder buildUpon = Uri.parse(zzj2).buildUpon();
                if (z2) {
                    buildUpon = buildUpon.appendQueryParameter(new ObfuscatedString(new long[]{-8011276889656829428L, 1421607923789575642L}).toString(), str);
                }
                if (z3) {
                    buildUpon = buildUpon.appendQueryParameter(new ObfuscatedString(new long[]{-2798918717491089496L, -5627357464011942955L}).toString(), str2);
                }
                zzj2 = buildUpon.build().toString();
            }
            arrayList.add(zzj2);
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0086 A[LOOP:0: B:10:0x0080->B:12:0x0086, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List zze(zzfgm zzfgmVar, List list, zzbzu zzbzuVar) {
        zzfgz zzfgzVar;
        zzfwz zzd;
        Iterator it;
        ArrayList arrayList = new ArrayList();
        long currentTimeMillis = this.zzh.currentTimeMillis();
        try {
            String zzc = zzbzuVar.zzc();
            String num = Integer.toString(zzbzuVar.zzb());
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdq)).booleanValue()) {
                zzfha zzfhaVar = this.zzg;
                if (zzfhaVar == null) {
                    zzd = zzfwz.zzc();
                    String str = (String) zzd.zza(new zzfws() { // from class: com.google.android.gms.internal.ads.zzfns
                        @Override // com.google.android.gms.internal.ads.zzfws
                        public final Object apply(Object obj) {
                            String zzi;
                            zzi = zzfnu.zzi(((zzfgz) obj).zza);
                            return zzi;
                        }
                    }).zzb(new ObfuscatedString(new long[]{4207158155487180074L}).toString());
                    String str2 = (String) zzd.zza(new zzfws() { // from class: com.google.android.gms.internal.ads.zzfnt
                        @Override // com.google.android.gms.internal.ads.zzfws
                        public final Object apply(Object obj) {
                            String zzi;
                            zzi = zzfnu.zzi(((zzfgz) obj).zzb);
                            return zzi;
                        }
                    }).zzb(new ObfuscatedString(new long[]{-5412014068783696728L}).toString());
                    it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(zzccj.zzc(zzj(zzj(zzj(zzj(zzj(zzj((String) it.next(), new ObfuscatedString(new long[]{-7260839320548446003L, -2147375115488904418L, 190842159028610392L}).toString(), Uri.encode(str)), new ObfuscatedString(new long[]{2602680190912759774L, -3981113053012829500L, 6231237932123118441L, 4182356000438725442L}).toString(), Uri.encode(str2)), new ObfuscatedString(new long[]{585916279241299471L, -6206609498887485404L, 119313923459861190L}).toString(), Long.toString(currentTimeMillis)), new ObfuscatedString(new long[]{8659522567053186029L, -3052371881323504156L, 4857829630708324619L}).toString(), Uri.encode(zzc)), new ObfuscatedString(new long[]{-461261381759031384L, 6687576689761045227L, -7298859289518142329L}).toString(), num), new ObfuscatedString(new long[]{2103831774663853088L, 4108677934373130458L, 5605201096014374976L}).toString(), this.zzb), this.zze, zzfgmVar.zzX));
                    }
                    return arrayList;
                }
                zzfgzVar = zzfhaVar.zza;
            } else {
                zzfgzVar = this.zzf;
            }
            zzd = zzfwz.zzd(zzfgzVar);
            String str3 = (String) zzd.zza(new zzfws() { // from class: com.google.android.gms.internal.ads.zzfns
                @Override // com.google.android.gms.internal.ads.zzfws
                public final Object apply(Object obj) {
                    String zzi;
                    zzi = zzfnu.zzi(((zzfgz) obj).zza);
                    return zzi;
                }
            }).zzb(new ObfuscatedString(new long[]{4207158155487180074L}).toString());
            String str22 = (String) zzd.zza(new zzfws() { // from class: com.google.android.gms.internal.ads.zzfnt
                @Override // com.google.android.gms.internal.ads.zzfws
                public final Object apply(Object obj) {
                    String zzi;
                    zzi = zzfnu.zzi(((zzfgz) obj).zzb);
                    return zzi;
                }
            }).zzb(new ObfuscatedString(new long[]{-5412014068783696728L}).toString());
            it = list.iterator();
            while (it.hasNext()) {
            }
            return arrayList;
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-724899903917533806L, -4173551784802407589L, 4165278159488493357L, 5657439347753463033L, 6519667877086473142L, -5539111974862544312L, 562197103462022618L}).toString(), e);
            return arrayList;
        }
    }
}
