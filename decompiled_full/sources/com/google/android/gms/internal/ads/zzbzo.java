package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbzo extends zzbzp {
    private final Object zza = new Object();
    private final Context zzb;

    @Nullable
    private SharedPreferences zzc;
    private final zzbrn zzd;

    public zzbzo(Context context, zzbrn zzbrnVar) {
        this.zzb = context.getApplicationContext();
        this.zzd = zzbrnVar;
    }

    public static JSONObject zzc(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(new ObfuscatedString(new long[]{-5122421695727121264L, 2336231852489482809L}).toString(), zzcei.zza().zza);
            jSONObject.put(new ObfuscatedString(new long[]{8603077565884060677L, 2613094662263857401L}).toString(), zzbia.zza.zze());
            jSONObject.put(new ObfuscatedString(new long[]{-5519933533844438196L, -5766694149855773434L}).toString(), new ObfuscatedString(new long[]{5584163947345682307L, 1095334952631621518L, 9047780795151339062L}).toString());
            jSONObject.put(new ObfuscatedString(new long[]{7221126959224729773L, 294556247983810433L}).toString(), new ObfuscatedString(new long[]{1152224741865610120L, -5516642508861825334L}).toString());
            jSONObject.put(new ObfuscatedString(new long[]{-3632093777510430250L, 8840558502024846600L, 173931758107320067L}).toString(), new ObfuscatedString(new long[]{-2657446976389557103L, 1501088761842590022L}).toString());
            jSONObject.put(new ObfuscatedString(new long[]{4514550881088139114L, 3719560096830452410L, 2275295699239478826L, -5608197219376303351L}).toString(), 12451000);
            jSONObject.put(new ObfuscatedString(new long[]{-5492814323856168899L, -2855093725658178663L, -7255400635379098063L, 6894504887878038182L}).toString(), ModuleDescriptor.MODULE_VERSION);
            jSONObject.put(new ObfuscatedString(new long[]{2164275056989738439L, -4452133206897313675L, 2162619467919566271L}).toString(), DynamiteModule.getRemoteVersion(context, new ObfuscatedString(new long[]{-4509247269675764291L, 4308018195787246884L, -4159525456331432261L, -7327982956434167470L, 1988697367194000783L, -2654499609234235551L}).toString()));
            jSONObject.put(new ObfuscatedString(new long[]{781200087204326178L, -7032684045223760270L, -978657797380315347L, 2063675200524460818L}).toString(), 12451000);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzbzp
    public final ListenableFuture zza() {
        synchronized (this.zza) {
            try {
                if (this.zzc == null) {
                    this.zzc = this.zzb.getSharedPreferences(new ObfuscatedString(new long[]{-6931632756590247033L, -1583456841731978710L, -8953945759004808521L, -1252215882348556996L}).toString(), 0);
                }
            } finally {
            }
        }
        if (com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() - this.zzc.getLong(new ObfuscatedString(new long[]{4836743312940567795L, 9118985187815665506L, 1297851101610323620L}).toString(), 0L) < ((Long) zzbia.zzb.zze()).longValue()) {
            return zzgen.zzh(null);
        }
        return zzgen.zzm(this.zzd.zzb(zzc(this.zzb)), new zzfws() { // from class: com.google.android.gms.internal.ads.zzbzn
            @Override // com.google.android.gms.internal.ads.zzfws
            public final Object apply(Object obj) {
                zzbzo.this.zzb((JSONObject) obj);
                return null;
            }
        }, zzcep.zzf);
    }

    public final /* synthetic */ Void zzb(JSONObject jSONObject) {
        zzbfu zzbfuVar = zzbgc.zza;
        com.google.android.gms.ads.internal.client.zzba.zzb();
        SharedPreferences.Editor edit = zzbfw.zza(this.zzb).edit();
        com.google.android.gms.ads.internal.client.zzba.zza();
        zzbhm zzbhmVar = zzbhr.zza;
        com.google.android.gms.ads.internal.client.zzba.zza().zze(edit, 1, jSONObject);
        com.google.android.gms.ads.internal.client.zzba.zzb();
        edit.commit();
        this.zzc.edit().putLong(new ObfuscatedString(new long[]{-8349196660360780693L, 4047079555969559382L, 827396134718825431L}).toString(), com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()).apply();
        return null;
    }
}
