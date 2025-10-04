package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class zzerl implements zzexp {
    final zzfhh zza;
    private final long zzb;

    public zzerl(zzfhh zzfhhVar, long j) {
        Preconditions.checkNotNull(zzfhhVar, new ObfuscatedString(new long[]{7241542369933943464L, -3550885519100600082L, 254449342888684257L, -4629214751443193525L, 8728567313093118708L}).toString());
        this.zza = zzfhhVar;
        this.zzb = j;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        Bundle bundle = (Bundle) obj;
        com.google.android.gms.ads.internal.client.zzl zzlVar = this.zza.zzd;
        bundle.putInt(new ObfuscatedString(new long[]{3384265021425906998L, 5811088029180738801L, 5848141038480494223L, -6171297486704184612L}).toString(), zzlVar.zzw);
        bundle.putString(new ObfuscatedString(new long[]{7880100031314660166L, 4448091026996213207L}).toString(), this.zza.zzf);
        int i = this.zza.zzo.zza;
        if (i != 0) {
            int i2 = i - 1;
            if (i2 != 1) {
                if (i2 == 2) {
                    bundle.putBoolean(new ObfuscatedString(new long[]{4925933110748775261L, -531804410567070130L, 372117314374435436L, -7210373732555734573L}).toString(), true);
                }
            } else {
                bundle.putBoolean(new ObfuscatedString(new long[]{-2851951808522827179L, -2795985938315251891L, -1354327580107267217L}).toString(), true);
            }
            bundle.putLong(new ObfuscatedString(new long[]{8940303817067044086L, 6868973751087726068L, 6658601712732318610L, -772075126956219529L}).toString(), this.zzb);
            String format = new SimpleDateFormat(new ObfuscatedString(new long[]{-4789856678378008888L, 7133081774267960183L}).toString(), Locale.US).format(new Date(zzlVar.zzb));
            if (zzlVar.zzb != -1) {
                z = true;
            } else {
                z = false;
            }
            zzfhv.zzf(bundle, new ObfuscatedString(new long[]{-6098787007853183267L, -2991946629437587278L}).toString(), format, z);
            zzfhv.zzb(bundle, new ObfuscatedString(new long[]{-4701642743205859973L, 5805890739199134245L}).toString(), zzlVar.zzc);
            int i3 = zzlVar.zzd;
            if (i3 != -1) {
                z2 = true;
            } else {
                z2 = false;
            }
            zzfhv.zze(bundle, new ObfuscatedString(new long[]{-843456711959283342L, 6031869092442738098L, -5770953942005347498L}).toString(), i3, z2);
            zzfhv.zzd(bundle, new ObfuscatedString(new long[]{401012309769599869L, 6923705352178382844L}).toString(), zzlVar.zze);
            int i4 = zzlVar.zzg;
            if (i4 != -1) {
                z3 = true;
            } else {
                z3 = false;
            }
            zzfhv.zze(bundle, new ObfuscatedString(new long[]{-8270941515060229855L, -429735560101266089L, -2596046364595952139L, 108891907147386695L, 4885916430683636812L}).toString(), i4, z3);
            if (zzlVar.zzf) {
                bundle.putBoolean(new ObfuscatedString(new long[]{9178543939973551710L, 6249893459071672698L, 7127904260521842018L}).toString(), true);
            }
            bundle.putInt(new ObfuscatedString(new long[]{-4710872707789626307L, -3892208487000463506L}).toString(), zzlVar.zzy);
            if (zzlVar.zza >= 2 && zzlVar.zzh) {
                z4 = true;
            } else {
                z4 = false;
            }
            zzfhv.zze(bundle, new ObfuscatedString(new long[]{-8766897367031804375L, 2620687826701587970L, -9017666979123247450L}).toString(), 1, z4);
            String str = zzlVar.zzi;
            if (zzlVar.zza >= 2 && !TextUtils.isEmpty(str)) {
                z5 = true;
            } else {
                z5 = false;
            }
            zzfhv.zzf(bundle, new ObfuscatedString(new long[]{7514403330925481411L, 8174666376390868016L}).toString(), str, z5);
            Location location = zzlVar.zzk;
            if (location != null) {
                float accuracy = location.getAccuracy() * 1000.0f;
                long time = location.getTime() * 1000;
                double latitude = location.getLatitude() * 1.0E7d;
                double longitude = location.getLongitude() * 1.0E7d;
                Bundle bundle2 = new Bundle();
                bundle2.putFloat(new ObfuscatedString(new long[]{-5653235123922817731L, -4678102055325109968L}).toString(), accuracy);
                bundle2.putLong(new ObfuscatedString(new long[]{-4375023031088942815L, 5232038637112667654L}).toString(), (long) latitude);
                bundle2.putLong(new ObfuscatedString(new long[]{1387730462833273891L, 3136101494524632111L}).toString(), (long) longitude);
                bundle2.putLong(new ObfuscatedString(new long[]{-7650117704106309019L, 520321663972005048L}).toString(), time);
                bundle.putBundle(new ObfuscatedString(new long[]{3606684082998714886L, 1998204403936555214L}).toString(), bundle2);
            }
            zzfhv.zzc(bundle, new ObfuscatedString(new long[]{4955603343692659349L, 7362657186383566269L}).toString(), zzlVar.zzl);
            zzfhv.zzd(bundle, new ObfuscatedString(new long[]{-211253642313156880L, 885859137781857829L, 9133948197297488639L, -7695649409037127166L}).toString(), zzlVar.zzv);
            zzfhv.zzb(bundle, new ObfuscatedString(new long[]{1692864730517003066L, 55136973970957243L, -6291503366417993587L}).toString(), zzlVar.zzn);
            zzfhv.zzd(bundle, new ObfuscatedString(new long[]{4825748337798403161L, -4164209351355667880L, -5875492324586338997L, 3158407150568487856L}).toString(), zzlVar.zzo);
            zzfhv.zzc(bundle, new ObfuscatedString(new long[]{-8718995593464458344L, -1218232984203461993L, -9198397215742999199L}).toString(), zzlVar.zzp);
            zzfhv.zzc(bundle, new ObfuscatedString(new long[]{-6204040505070446610L, -3370604396000278694L, 3976593153557666864L}).toString(), zzlVar.zzq);
            boolean z8 = zzlVar.zzr;
            if (zzlVar.zza >= 7) {
                z6 = true;
            } else {
                z6 = false;
            }
            zzfhv.zzg(bundle, new ObfuscatedString(new long[]{-1154914227819599102L, 4502309251266809906L, 7150392441182207020L, -6278562976644683869L}).toString(), z8, z6);
            if (zzlVar.zza >= 8) {
                int i5 = zzlVar.zzt;
                if (i5 != -1) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                zzfhv.zze(bundle, new ObfuscatedString(new long[]{5231622433860380212L, -4424135697239760316L, 5709126144596384577L, -1860760910160048017L, -8691169456994374614L}).toString(), i5, z7);
                zzfhv.zzc(bundle, new ObfuscatedString(new long[]{8018535323290347028L, 7830848645639902168L, 566942382616280870L, -6607072531743912865L}).toString(), zzlVar.zzu);
                return;
            }
            return;
        }
        throw null;
    }
}
