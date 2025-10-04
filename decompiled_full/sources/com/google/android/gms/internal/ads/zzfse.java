package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfse implements zzfqu {
    private final Object zza;
    private final zzfsf zzb;
    private final zzfsq zzc;
    private final zzfqr zzd;

    public zzfse(@NonNull Object obj, @NonNull zzfsf zzfsfVar, @NonNull zzfsq zzfsqVar, @NonNull zzfqr zzfqrVar) {
        this.zza = obj;
        this.zzb = zzfsfVar;
        this.zzc = zzfsqVar;
        this.zzd = zzfqrVar;
    }

    @Nullable
    private static String zzi(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        zzatp zza = zzatq.zza();
        zza.zzc(5);
        zza.zza(zzgyl.zzv(bArr, 0, bArr.length));
        return Base64.encodeToString(((zzatq) zza.zzal()).zzax(), 11);
    }

    @Nullable
    private final synchronized byte[] zzj(Map map, Map map2) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
        } catch (Exception e) {
            this.zzd.zzc(2007, System.currentTimeMillis() - currentTimeMillis, e);
            return null;
        }
        return (byte[]) this.zza.getClass().getDeclaredMethod(new ObfuscatedString(new long[]{-74807910042443927L, -5219232643364998758L}).toString(), Map.class, Map.class).invoke(this.zza, null, map2);
    }

    @Override // com.google.android.gms.internal.ads.zzfqu
    @Nullable
    public final synchronized String zza(Context context, String str, String str2, View view, Activity activity) {
        Map zza;
        zza = this.zzc.zza();
        zza.put(new ObfuscatedString(new long[]{883045549654614142L, 9083954769982914936L}).toString(), new ObfuscatedString(new long[]{-97710922790907243L, -2346226174041892457L}).toString());
        zza.put(new ObfuscatedString(new long[]{5490449193607235437L, 288121744410180873L}).toString(), context);
        zza.put(new ObfuscatedString(new long[]{-6070362401238816779L, -4428897142039617044L}).toString(), str2);
        zza.put(new ObfuscatedString(new long[]{-9210150293174247638L, 6126329805585524738L}).toString(), null);
        zza.put(new ObfuscatedString(new long[]{3905873481840918055L, 731347847660566522L}).toString(), view);
        zza.put(new ObfuscatedString(new long[]{-8912299841556719953L, 4159597314229920707L}).toString(), activity);
        return zzi(zzj(null, zza));
    }

    @Override // com.google.android.gms.internal.ads.zzfqu
    @Nullable
    public final synchronized String zzb(Context context, String str, View view, Activity activity) {
        Map zzc;
        zzc = this.zzc.zzc();
        zzc.put(new ObfuscatedString(new long[]{-1480355740505634022L, -5365721824872418658L}).toString(), new ObfuscatedString(new long[]{7873003372937100591L, -8489119288317414484L}).toString());
        zzc.put(new ObfuscatedString(new long[]{-1908824435097019857L, -1427970057832852774L}).toString(), context);
        zzc.put(new ObfuscatedString(new long[]{-9204361502009050642L, -7514153765221079943L}).toString(), null);
        zzc.put(new ObfuscatedString(new long[]{-8287286548499851774L, -5824582202611631387L}).toString(), view);
        zzc.put(new ObfuscatedString(new long[]{-7274951686822540338L, 1048683515470405016L}).toString(), activity);
        return zzi(zzj(null, zzc));
    }

    @Override // com.google.android.gms.internal.ads.zzfqu
    @Nullable
    public final synchronized String zzc(Context context, String str) {
        Map zzb;
        zzb = this.zzc.zzb();
        zzb.put(new ObfuscatedString(new long[]{-3622723454945630088L, 8694153983562974507L}).toString(), new ObfuscatedString(new long[]{4124408693786766963L, 2725793526353936490L}).toString());
        zzb.put(new ObfuscatedString(new long[]{8104701006443657791L, 4743657899205958873L}).toString(), context);
        zzb.put(new ObfuscatedString(new long[]{-7501924640157728724L, 3007144158291777573L}).toString(), null);
        return zzi(zzj(null, zzb));
    }

    @Override // com.google.android.gms.internal.ads.zzfqu
    public final synchronized void zzd(String str, MotionEvent motionEvent) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            HashMap hashMap = new HashMap();
            hashMap.put(new ObfuscatedString(new long[]{2043162391630885807L, 4285177707431480458L}).toString(), new Throwable());
            hashMap.put(new ObfuscatedString(new long[]{-6912132870738496111L, -8281843460660759567L}).toString(), null);
            hashMap.put(new ObfuscatedString(new long[]{-6705357682471221579L, 189397529719192953L}).toString(), motionEvent);
            this.zza.getClass().getDeclaredMethod(new ObfuscatedString(new long[]{-638759587770629645L, -2150021156016368322L}).toString(), Map.class).invoke(this.zza, hashMap);
            this.zzd.zzd(3003, System.currentTimeMillis() - currentTimeMillis);
        } catch (Exception e) {
            throw new zzfso(2005, e);
        }
    }

    public final synchronized int zze() {
        try {
        } catch (Exception e) {
            throw new zzfso(2006, e);
        }
        return ((Integer) this.zza.getClass().getDeclaredMethod(new ObfuscatedString(new long[]{-6419423491396096417L, -8912572998789784538L}).toString(), null).invoke(this.zza, null)).intValue();
    }

    public final zzfsf zzf() {
        return this.zzb;
    }

    public final synchronized void zzg() {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            this.zza.getClass().getDeclaredMethod(new ObfuscatedString(new long[]{-463623403654673644L, 4302455592629032806L}).toString(), null).invoke(this.zza, null);
            this.zzd.zzd(3001, System.currentTimeMillis() - currentTimeMillis);
        } catch (Exception e) {
            throw new zzfso(2003, e);
        }
    }

    public final synchronized boolean zzh() {
        try {
        } catch (Exception e) {
            throw new zzfso(2001, e);
        }
        return ((Boolean) this.zza.getClass().getDeclaredMethod(new ObfuscatedString(new long[]{-8630104251187747557L, 2166989933377924780L}).toString(), null).invoke(this.zza, null)).booleanValue();
    }
}
