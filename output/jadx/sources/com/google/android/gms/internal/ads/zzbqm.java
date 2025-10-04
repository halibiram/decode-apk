package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Predicate;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzbqm implements zzbqe, zzbqc {
    private final zzcjk zza;

    /* JADX WARN: Multi-variable type inference failed */
    public zzbqm(Context context, zzcei zzceiVar, @Nullable zzavi zzaviVar, com.google.android.gms.ads.internal.zza zzaVar) {
        com.google.android.gms.ads.internal.zzt.zzz();
        zzcjk zza = zzcjx.zza(context, zzcla.zza(), new ObfuscatedString(new long[]{-3594935094271355626L}).toString(), false, false, null, null, zzceiVar, null, null, null, zzbbp.zza(), null, null, null, null);
        this.zza = zza;
        ((View) zza).setWillNotDraw(true);
    }

    private static final void zzs(Runnable runnable) {
        com.google.android.gms.ads.internal.client.zzay.zzb();
        if (zzcdv.zzu()) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{3258607442928795580L, -3994451165264786314L, 8300324380064595625L, 7382507131353652111L, 4844071504202372766L, 5398578687363340019L, -7130073428336924099L, -9198007620284373808L, -1382754421365884377L, -751610793706014221L, 3070332154823257733L}).toString());
            runnable.run();
        } else {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-9202171171860739599L, 9134568782455835171L, 2354508897905567961L, -2021198349045744211L, -1038480952345007943L, 8762771396024236831L, -1551443125885974128L, -3201128051568079473L, 4317104074520948819L, -5987256624485926229L, 4491572090269338575L, -8882466396129064751L, 4486759613111513509L, 3193951620319529340L}).toString());
            if (!com.google.android.gms.ads.internal.util.zzt.zza.post(runnable)) {
                zzcec.zzj(new ObfuscatedString(new long[]{-1936282993509862756L, 5724626775091044515L, -8314360054079283431L, 5496358240430917020L, -318974394207120145L, -5906440335265833775L, 7000209708163665465L, 4989895012031391615L, -8544116400581082413L, -5569857828238689335L}).toString());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqn
    public final void zza(final String str) {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{7348475980078238696L, 7181195258028857177L, -5834970784349268465L, 6064531986526026028L, -437284603333014206L, 3929637568974243936L}).toString());
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbqi
            @Override // java.lang.Runnable
            public final void run() {
                zzbqm.this.zzm(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbqn
    public final /* synthetic */ void zzb(String str, String str2) {
        zzbqb.zzc(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbqe
    public final void zzc() {
        this.zza.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final /* synthetic */ void zzd(String str, Map map) {
        zzbqb.zza(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final /* synthetic */ void zze(String str, JSONObject jSONObject) {
        zzbqb.zzb(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbqe
    public final void zzf(final String str) {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{8698852194111870647L, 4384551917795377592L, 5406616799791011759L, 3868725424457998032L, -1080172325805856386L}).toString());
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbqj
            @Override // java.lang.Runnable
            public final void run() {
                zzbqm.this.zzn(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbqe
    public final void zzg(final String str) {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{7608634791813702529L, 6198011535157283062L, -9046443137515506663L, 6574626545814277722L, 7562216786589339082L, -6690511139568531903L}).toString().concat(String.valueOf(str)));
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbqg
            @Override // java.lang.Runnable
            public final void run() {
                zzbqm.this.zzo(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbqe
    public final void zzh(String str) {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-13090323474698625L, -3453281408444193225L, 2862680801452873668L, 6622026759785236524L, 8497307679635352801L, 4500411515001545390L}).toString().concat(String.valueOf(str)));
        final String format = String.format(new ObfuscatedString(new long[]{4810771875687230927L, 4342891652414266525L, -2029689467430222339L, -890634367705255298L, 6276011844348235467L, 2525762562851519395L, 2251230725084016375L, -1636608664760916475L, 6059186970481355848L, -8651008110744030293L, 1427447266323582145L}).toString(), str);
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbqk
            @Override // java.lang.Runnable
            public final void run() {
                zzbqm.this.zzp(format);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbqe
    public final boolean zzi() {
        return this.zza.zzaB();
    }

    @Override // com.google.android.gms.internal.ads.zzbqe
    public final zzbrl zzj() {
        return new zzbrl(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbqe
    public final void zzk(final zzbqs zzbqsVar) {
        zzcky zzN = this.zza.zzN();
        Objects.requireNonNull(zzbqsVar);
        zzN.zzH(new zzckx() { // from class: com.google.android.gms.internal.ads.zzbqh
            @Override // com.google.android.gms.internal.ads.zzckx
            public final void zza() {
                long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
                zzbqs zzbqsVar2 = zzbqs.this;
                final long j = zzbqsVar2.zzc;
                final ArrayList arrayList = zzbqsVar2.zzb;
                arrayList.add(Long.valueOf(currentTimeMillis - j));
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-8193405790150754466L, -7243346338861620465L, -3821644296418445954L, -7796266547392157545L, 342147327153198200L, -8362322064062039425L, 6874961338094120913L}).toString() + String.valueOf(arrayList.get(0)) + new ObfuscatedString(new long[]{2256338583018373197L, 3497071934052945786L}).toString());
                zzftt zzfttVar = com.google.android.gms.ads.internal.util.zzt.zza;
                final zzbrj zzbrjVar = zzbqsVar2.zza;
                final zzbri zzbriVar = zzbqsVar2.zzd;
                final zzbqe zzbqeVar = zzbqsVar2.zze;
                zzfttVar.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbqo
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbrj.this.zzi(zzbriVar, zzbqeVar, arrayList, j);
                    }
                }, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzc)).intValue());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbqn
    public final /* synthetic */ void zzl(String str, JSONObject jSONObject) {
        zzbqb.zzd(this, str, jSONObject);
    }

    public final /* synthetic */ void zzm(String str) {
        this.zza.zza(str);
    }

    public final /* synthetic */ void zzn(String str) {
        this.zza.loadData(str, new ObfuscatedString(new long[]{4791130216682262861L, -3653348771112455198L, -8439445092046402051L}).toString(), new ObfuscatedString(new long[]{-1676411197265952564L, -7526669903271776152L}).toString());
    }

    public final /* synthetic */ void zzo(String str) {
        this.zza.loadUrl(str);
    }

    public final /* synthetic */ void zzp(String str) {
        this.zza.loadData(str, new ObfuscatedString(new long[]{-5242021569051451627L, -2151278481926245282L, 4828778474608986368L}).toString(), new ObfuscatedString(new long[]{199568310732343215L, 2114435581313321464L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbrk
    public final void zzq(String str, zzbng zzbngVar) {
        this.zza.zzae(str, new zzbql(this, zzbngVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbrk
    public final void zzr(String str, final zzbng zzbngVar) {
        this.zza.zzax(str, new Predicate() { // from class: com.google.android.gms.internal.ads.zzbqf
            @Override // com.google.android.gms.common.util.Predicate
            public final boolean apply(Object obj) {
                zzbng zzbngVar2;
                zzbng zzbngVar3 = (zzbng) obj;
                if (zzbngVar3 instanceof zzbql) {
                    zzbng zzbngVar4 = zzbng.this;
                    zzbngVar2 = ((zzbql) zzbngVar3).zzb;
                    if (zzbngVar2.equals(zzbngVar4)) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
        });
    }
}
