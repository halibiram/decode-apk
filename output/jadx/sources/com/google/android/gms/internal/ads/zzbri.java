package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbri extends zzcfb {
    private final com.google.android.gms.ads.internal.util.zzbd zzb;
    private final Object zza = new Object();
    private boolean zzc = false;
    private int zzd = 0;

    public zzbri(com.google.android.gms.ads.internal.util.zzbd zzbdVar) {
        this.zzb = zzbdVar;
    }

    public final zzbrd zza() {
        boolean z;
        zzbrd zzbrdVar = new zzbrd(this);
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-8494264065850351168L, -7127309047155505941L, -8277863360724302454L, -6781131000410418238L, 5350091710788543322L, -2504503832948596330L, 121599846997155992L}).toString());
        synchronized (this.zza) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-9210371619727386744L, 2942773969992761799L, -9032464015753334796L, -7823877237529298662L, 5081383542025889515L, 3928643708808922513L}).toString());
            zzi(new zzbre(this, zzbrdVar), new zzbrf(this, zzbrdVar));
            if (this.zzd >= 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z);
            this.zzd++;
        }
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{6746898408832674317L, 4433891947587054825L, 6515665990231820484L, 1722314996946437412L, 2991043002869253382L, -4637679295385562631L}).toString());
        return zzbrdVar;
    }

    public final void zzb() {
        boolean z;
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-4502470395519969314L, -8484068704989911883L, 6364738993114540793L, -5296413137962222463L, -6641214409593170980L, 5326691466528683120L, -7235962043760232759L}).toString());
        synchronized (this.zza) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-7149893495202778313L, -7968768696119067126L, 7370863445855010510L, 7896142450461573434L, 8001129794969510596L}).toString());
            if (this.zzd >= 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z);
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{7005526705477858127L, 7070111016462723579L, -6071268133422655780L, -197681562182186122L, 7583994178989653927L, 8835939733772379218L, -2799433321644453152L, -8720473642081548827L, 62426828157836433L, -2317135311372231569L, -8779856965964279010L, 7615718813797824370L, 1271198940514998211L}).toString());
            this.zzc = true;
            zzc();
        }
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{1283585227258218649L, 8094565535599457260L, -1828472740082210783L, 622396562419089080L, 8103755905507688918L}).toString());
    }

    public final void zzc() {
        boolean z;
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{4099963230918672902L, 8334939186437692328L, -1090016595238013523L, -1407278214550999648L, 1252173998386170282L, 1453073375425181067L}).toString());
        synchronized (this.zza) {
            try {
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{9107358636035509661L, -6956871378045990035L, 5326881891339262421L, 7357435691764065386L, 3729379371169284139L}).toString());
                if (this.zzd >= 0) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.checkState(z);
                if (this.zzc && this.zzd == 0) {
                    com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-1193356503024866030L, 6468560398897405483L, -1504865723278008680L, 8734504243358112038L, 480310037473895000L, -7780954376110306620L, 6163183423656647752L, -5904493618611755952L, 2413190616888651170L}).toString());
                    zzi(new zzbrh(this), new zzcex());
                } else {
                    com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{4310604859912713019L, 3974110053356846667L, 7413861163634057821L, 4177250913951056907L, 8344190446697376998L, 2267791353917882466L, -1503990127182004206L, -4545436315757462487L, 3534184987793935102L}).toString());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{7866829613026188035L, 5272592372127424798L, 4503119165962912172L, 6317523603845617749L, -6304476709296272012L}).toString());
    }

    public final void zzd() {
        boolean z;
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{5465698826829633664L, -3767550512390260784L, 9133396504053988564L, -2458212630429340794L, -6112766058618966599L, -5611742146534804674L, -8078720420203716588L}).toString());
        synchronized (this.zza) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-8378040675096052749L, 3296009978822963310L, -9054003926959418197L, 7728741291776878885L, 5864183902890202901L, -8394859266425652418L}).toString());
            if (this.zzd > 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z);
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-4942171041099917841L, -8193317298238121936L, -3761292757088251830L, 2813699010069003672L, -4120438243776093293L, -287080206562564304L}).toString());
            this.zzd--;
            zzc();
        }
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{4303185102758494531L, 9001883394709820680L, -7917560515591605393L, -1299410447958581735L, 5794600503760482823L, -8494133644309175659L}).toString());
    }
}
