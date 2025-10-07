package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;

/* loaded from: classes2.dex */
final class zzchq implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ int zzc;
    final /* synthetic */ int zzd;
    final /* synthetic */ zzchw zze;

    public zzchq(zzchw zzchwVar, String str, String str2, int i, int i2, boolean z) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = i;
        this.zzd = i2;
        this.zze = zzchwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{-7781081824114846591L, 2190502793323068827L}).toString(), new ObfuscatedString(new long[]{7661689930265114438L, -4143176180627527055L, -7144729604613237540L}).toString());
        hashMap.put(new ObfuscatedString(new long[]{-9051800548486832460L, -3579052207116956769L}).toString(), this.zza);
        hashMap.put(new ObfuscatedString(new long[]{-3534023630932753646L, 8853911411522515241L, 3516358933324696328L}).toString(), this.zzb);
        hashMap.put(new ObfuscatedString(new long[]{-5453424380261154397L, -4254193036057142886L, 4008651866708059025L}).toString(), Integer.toString(this.zzc));
        hashMap.put(new ObfuscatedString(new long[]{-7339043267626875139L, 1988286764150415384L, -7598920094776611059L}).toString(), Integer.toString(this.zzd));
        hashMap.put(new ObfuscatedString(new long[]{-616329590428382042L, -7562750548350634636L, -7121107522977260855L}).toString(), new ObfuscatedString(new long[]{-193244014448764373L, 435782957495436518L}).toString());
        zzchw.zze(this.zze, new ObfuscatedString(new long[]{2016421464518227154L, -2732594328607487962L, -4990244678463268754L}).toString(), hashMap);
    }
}
