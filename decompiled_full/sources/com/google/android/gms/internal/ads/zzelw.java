package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class zzelw implements zzein {
    private static Bundle zzd(Bundle bundle) {
        if (bundle == null) {
            return new Bundle();
        }
        return new Bundle(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzein
    public final ListenableFuture zza(zzfgy zzfgyVar, zzfgm zzfgmVar) {
        String optString = zzfgmVar.zzw.optString(new ObfuscatedString(new long[]{3914735837755938269L, 1458951575322382881L}).toString(), new ObfuscatedString(new long[]{-6142038435379349390L}).toString());
        zzfhh zzfhhVar = zzfgyVar.zza.zza;
        zzfhf zzfhfVar = new zzfhf();
        zzfhfVar.zzp(zzfhhVar);
        zzfhfVar.zzs(optString);
        Bundle zzd = zzd(zzfhhVar.zzd.zzm);
        Bundle zzd2 = zzd(zzd.getBundle(new ObfuscatedString(new long[]{-1659150298823358785L, 8798112109966616404L, -7899160513919105321L, -6162018094789117010L, 5341683627838261891L, 6198096591767641909L, -3108798252344101171L}).toString()));
        zzd2.putInt(new ObfuscatedString(new long[]{-7476628538397048040L, 1394464063870040693L}).toString(), 1);
        String optString2 = zzfgmVar.zzw.optString(new ObfuscatedString(new long[]{-7555311766999764988L, 2340700655937273704L}).toString(), null);
        if (optString2 != null) {
            zzd2.putString(new ObfuscatedString(new long[]{-234638208956481392L, 3686348027489875875L}).toString(), optString2);
        }
        String optString3 = zzfgmVar.zzw.optString(new ObfuscatedString(new long[]{-7677011818737677219L, 7776883485528359598L}).toString(), null);
        if (optString3 != null) {
            zzd2.putString(new ObfuscatedString(new long[]{-2765434567501328877L, 6565373488570667469L}).toString(), optString3);
        }
        zzd2.putBoolean(new ObfuscatedString(new long[]{-967495683495645816L, -8440039449237101932L, -4682708865238450620L}).toString(), true);
        Iterator<String> keys = zzfgmVar.zzE.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString4 = zzfgmVar.zzE.optString(next, null);
            if (next != null) {
                zzd2.putString(next, optString4);
            }
        }
        zzd.putBundle(new ObfuscatedString(new long[]{-5195297361618066688L, 7965802165433670695L, 1727192177207418740L, -5521096101332743101L, -6264357702483916059L, 3437586419170677173L, -7501734046990552572L}).toString(), zzd2);
        com.google.android.gms.ads.internal.client.zzl zzlVar = zzfhhVar.zzd;
        Bundle bundle = zzlVar.zzn;
        List list = zzlVar.zzo;
        String str = zzlVar.zzp;
        int i = zzlVar.zzd;
        String str2 = zzlVar.zzq;
        List list2 = zzlVar.zze;
        boolean z = zzlVar.zzr;
        boolean z2 = zzlVar.zzf;
        com.google.android.gms.ads.internal.client.zzc zzcVar = zzlVar.zzs;
        int i2 = zzlVar.zzg;
        int i3 = zzlVar.zzt;
        boolean z3 = zzlVar.zzh;
        String str3 = zzlVar.zzu;
        String str4 = zzlVar.zzi;
        List list3 = zzlVar.zzv;
        zzfhfVar.zzE(new com.google.android.gms.ads.internal.client.zzl(zzlVar.zza, zzlVar.zzb, zzd2, i, list2, z2, i2, z3, str4, zzlVar.zzj, zzlVar.zzk, zzlVar.zzl, zzd, bundle, list, str, str2, z, zzcVar, i3, str3, list3, zzlVar.zzw, zzlVar.zzx, zzlVar.zzy));
        zzfhh zzG = zzfhfVar.zzG();
        Bundle bundle2 = new Bundle();
        zzfgp zzfgpVar = zzfgyVar.zzb.zzb;
        Bundle bundle3 = new Bundle();
        bundle3.putStringArrayList(new ObfuscatedString(new long[]{8010395880333052696L, -1121366150844934140L, -4085202029372743623L}).toString(), new ArrayList<>(zzfgpVar.zza));
        bundle3.putInt(new ObfuscatedString(new long[]{721143002149893881L, -7827984882694652578L, -6426562106239961203L}).toString(), zzfgpVar.zzc);
        bundle3.putString(new ObfuscatedString(new long[]{6416043903236439945L, -7019270915121187735L, -6616425080845849628L}).toString(), zzfgpVar.zzb);
        bundle2.putBundle(new ObfuscatedString(new long[]{3077542899195418636L, -477842210367547770L, 1113854731977448387L, -4610810029661926148L}).toString(), bundle3);
        zzfhh zzfhhVar2 = zzfgyVar.zza.zza;
        Bundle bundle4 = new Bundle();
        bundle4.putString(new ObfuscatedString(new long[]{-8070183292836613860L, -2497993124902487519L, -4940448442207536850L, -486895051854296616L}).toString(), zzfhhVar2.zzf);
        bundle4.putString(new ObfuscatedString(new long[]{765581956115618285L, -2360012368196238326L, 5523409525154174489L}).toString(), zzfgmVar.zzx);
        bundle4.putStringArrayList(new ObfuscatedString(new long[]{-3479815681677908808L, 1886817519413763852L, 623289115530251227L}).toString(), new ArrayList<>(zzfgmVar.zzc));
        bundle4.putStringArrayList(new ObfuscatedString(new long[]{-3604036141941955992L, -5749296221931790168L}).toString(), new ArrayList<>(zzfgmVar.zzd));
        bundle4.putStringArrayList(new ObfuscatedString(new long[]{-5787947737100602604L, 1980728109949104919L, -2939997599704084469L, 1923912096183162836L}).toString(), new ArrayList<>(zzfgmVar.zzq));
        bundle4.putStringArrayList(new ObfuscatedString(new long[]{5011479955681961656L, 1003790221898728133L, -8574344286227295497L}).toString(), new ArrayList<>(zzfgmVar.zzn));
        bundle4.putStringArrayList(new ObfuscatedString(new long[]{742128945832075685L, 2780475738406359978L, -8026395341814491747L}).toString(), new ArrayList<>(zzfgmVar.zzh));
        bundle4.putStringArrayList(new ObfuscatedString(new long[]{-7174502326938794500L, -4106277400946771487L, -8208090227770410472L, 2639295590354071185L}).toString(), new ArrayList<>(zzfgmVar.zzi));
        bundle4.putStringArrayList(new ObfuscatedString(new long[]{-4587732403387074904L, -4664158172019501382L, 2786190627651964914L, 698420284525807964L}).toString(), new ArrayList<>(zzfgmVar.zzj));
        bundle4.putString(new ObfuscatedString(new long[]{-3737139017157186912L, 3842751439901790450L, -6530367944588526843L}).toString(), zzfgmVar.zzk);
        bundle4.putString(new ObfuscatedString(new long[]{-9056470856544223429L, 5668702577521008695L, 1205510684175951310L, 2948522487631690605L}).toString(), zzfgmVar.zzl);
        bundle4.putBoolean(new ObfuscatedString(new long[]{7122855197124793727L, -6837312543557170682L, 5426594666045700661L, 7190898686091014857L, 5745410336067644055L}).toString(), zzfgmVar.zzQ);
        bundle4.putString(new ObfuscatedString(new long[]{-5103841292035005944L, 2560520041544911814L, -470612294260875446L, -7576426654322416184L, -3236837633280361786L}).toString(), zzfgmVar.zzap);
        if (zzfgmVar.zzm != null) {
            Bundle bundle5 = new Bundle();
            bundle5.putInt(new ObfuscatedString(new long[]{9125741389874750968L, 4491827131357793073L, -8613104708634680819L}).toString(), zzfgmVar.zzm.zzb);
            bundle5.putString(new ObfuscatedString(new long[]{-6734443474524624327L, 8288299407946468721L}).toString(), zzfgmVar.zzm.zza);
            bundle4.putParcelableArray(new ObfuscatedString(new long[]{1657265337262704294L, -1574089427869059105L}).toString(), new Bundle[]{bundle5});
        }
        bundle2.putBundle(new ObfuscatedString(new long[]{-4178183822068134069L, -2557709762220026542L, 6462377845283344245L}).toString(), bundle4);
        return zzc(zzG, bundle2, zzfgmVar, zzfgyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzein
    public final boolean zzb(zzfgy zzfgyVar, zzfgm zzfgmVar) {
        if (!TextUtils.isEmpty(zzfgmVar.zzw.optString(new ObfuscatedString(new long[]{4568925213726273107L, 7165309562541797689L}).toString(), new ObfuscatedString(new long[]{-5115947611383535069L}).toString()))) {
            return true;
        }
        return false;
    }

    public abstract ListenableFuture zzc(zzfhh zzfhhVar, Bundle bundle, zzfgm zzfgmVar, zzfgy zzfgyVar);
}
