package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbqx implements Runnable {
    final /* synthetic */ zzbri zza;
    final /* synthetic */ zzbqe zzb;
    final /* synthetic */ ArrayList zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ zzbrj zze;

    public zzbqx(zzbrj zzbrjVar, zzbri zzbriVar, zzbqe zzbqeVar, ArrayList arrayList, long j) {
        this.zza = zzbriVar;
        this.zzb = zzbqeVar;
        this.zzc = arrayList;
        this.zzd = j;
        this.zze = zzbrjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        int i;
        String str;
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-4448709654317014667L, 6079737951234599457L, -6398229782607927445L, 5122563566804298482L, -5465602365964520991L, 7713608648935591277L, -3027072831822072743L, -3573024030698861509L, -265434208237971549L, -4302356869955067354L, -3338954683978294465L}).toString());
        obj = this.zze.zza;
        synchronized (obj) {
            try {
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{340598606559320853L, -641788660425481910L, -7316449081680640692L, -7015628774858243234L, 5388626962935547039L, 7537812045691795295L, -7554791163701793714L, 2686476970051236801L, 613552719456394589L, -3121169244042006295L}).toString());
                if (this.zza.zze() != -1 && this.zza.zze() != 1) {
                    this.zza.zzg();
                    zzgey zzgeyVar = zzcep.zze;
                    final zzbqe zzbqeVar = this.zzb;
                    Objects.requireNonNull(zzbqeVar);
                    zzgeyVar.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbqw
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzbqe.this.zzc();
                        }
                    });
                    String valueOf = String.valueOf(com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzd));
                    int zze = this.zza.zze();
                    i = this.zze.zzi;
                    if (this.zzc.isEmpty()) {
                        str = new ObfuscatedString(new long[]{4447187497505815699L, 4123705133692180909L, -3005993249430968972L, -7846544945583679306L, -3846640060707333803L, 6521779144475809744L, 6160118063990889698L}).toString();
                    } else {
                        str = new ObfuscatedString(new long[]{4842823300268529007L, 7205844554769058618L, 7812563582170909700L, 6235582213565829407L, -6089745335171177155L, -8632428782666564604L, -300973908467610124L, -3064790587208564081L, 3146140904605578457L, -4838303445717171537L, 800267182547174067L, 1568296129109257162L}).toString() + String.valueOf(this.zzc.get(0));
                    }
                    com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-8909689130382982715L, -6448008269097642383L, 8179196000774899480L, -7876046880681744039L, -5527418542678546465L, 3947275168178846680L, 1822424609466757249L}).toString() + valueOf + new ObfuscatedString(new long[]{2499689215452739231L, 3506738364279840813L, 6891359753250048262L, 7931497497771806474L, 7620404943936381045L, 8182538578784599197L, 6290101959546870560L, 2808695406739790167L, -7332007083750303342L}).toString() + zze + new ObfuscatedString(new long[]{-8904572765124909761L, 7697877975611161652L, 2955414243050056684L, 6526228646019069440L, 5437606597462993769L, 8060097333799176474L}).toString() + i + str + new ObfuscatedString(new long[]{-5247608389805055407L, -6559149133265580343L, 5823614880715950691L, 7059153129042763441L, 1768842756983010579L, 2225101967967179465L}).toString() + (com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() - this.zzd) + new ObfuscatedString(new long[]{-3561547929010787057L, 5664815741388041698L, -4783695855133914218L, 538224468189434246L, 6061897922427011875L}).toString());
                    com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-1076910364252722903L, 3825638683756667622L, 6792313572121451212L, -5199110323152804154L, -3431724046006965381L, -6625046030733872282L, 6447296244088185092L, 5285841513906347849L, -7463074765214457083L, -4413423682617657938L}).toString());
                    return;
                }
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{780884473113067050L, -2709613554545071079L, 5364403251995753673L, 6691136470879958227L, 2117187052375799298L, -4965822624280700889L, 7555548684544557630L, 5612829408703364882L, 8167430020593246198L, -4062013923812626078L, 9070629826369749645L, 8800369407629590972L, 3505914797046187144L, 5350068056638294025L}).toString());
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
