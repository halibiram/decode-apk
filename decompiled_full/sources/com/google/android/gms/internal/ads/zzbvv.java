package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbvv extends zzbvw implements zzbng {
    DisplayMetrics zza;
    int zzb;
    int zzc;
    int zzd;
    int zze;
    int zzf;
    int zzg;
    private final zzcjk zzh;
    private final Context zzi;
    private final WindowManager zzj;
    private final zzbfm zzk;
    private float zzl;
    private int zzm;

    public zzbvv(zzcjk zzcjkVar, Context context, zzbfm zzbfmVar) {
        super(zzcjkVar, new ObfuscatedString(new long[]{1456066482458431085L}).toString());
        this.zzb = -1;
        this.zzc = -1;
        this.zzd = -1;
        this.zze = -1;
        this.zzf = -1;
        this.zzg = -1;
        this.zzh = zzcjkVar;
        this.zzi = context;
        this.zzk = zzbfmVar;
        this.zzj = (WindowManager) context.getSystemService(new ObfuscatedString(new long[]{3886841493874258180L, -3429094188352525519L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbng
    public final /* synthetic */ void zza(Object obj, Map map) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        JSONObject jSONObject;
        this.zza = new DisplayMetrics();
        Display defaultDisplay = this.zzj.getDefaultDisplay();
        defaultDisplay.getMetrics(this.zza);
        this.zzl = this.zza.density;
        this.zzm = defaultDisplay.getRotation();
        com.google.android.gms.ads.internal.client.zzay.zzb();
        DisplayMetrics displayMetrics = this.zza;
        this.zzb = zzcdv.zzv(displayMetrics, displayMetrics.widthPixels);
        com.google.android.gms.ads.internal.client.zzay.zzb();
        DisplayMetrics displayMetrics2 = this.zza;
        this.zzc = zzcdv.zzv(displayMetrics2, displayMetrics2.heightPixels);
        Activity zzi = this.zzh.zzi();
        if (zzi != null && zzi.getWindow() != null) {
            com.google.android.gms.ads.internal.zzt.zzp();
            int[] zzP = com.google.android.gms.ads.internal.util.zzt.zzP(zzi);
            com.google.android.gms.ads.internal.client.zzay.zzb();
            this.zzd = zzcdv.zzv(this.zza, zzP[0]);
            com.google.android.gms.ads.internal.client.zzay.zzb();
            this.zze = zzcdv.zzv(this.zza, zzP[1]);
        } else {
            this.zzd = this.zzb;
            this.zze = this.zzc;
        }
        if (this.zzh.zzO().zzi()) {
            this.zzf = this.zzb;
            this.zzg = this.zzc;
        } else {
            this.zzh.measure(0, 0);
        }
        zzj(this.zzb, this.zzc, this.zzd, this.zze, this.zzl, this.zzm);
        zzbvu zzbvuVar = new zzbvu();
        zzbfm zzbfmVar = this.zzk;
        Intent intent = new Intent(new ObfuscatedString(new long[]{5012712839541255342L, -8737539553694671422L, 4686244479360025088L, -4481778987861998157L, -9204779626374483598L}).toString());
        intent.setData(Uri.parse(new ObfuscatedString(new long[]{-2484027477957846721L, -506187045235650104L}).toString()));
        zzbvuVar.zze(zzbfmVar.zza(intent));
        zzbfm zzbfmVar2 = this.zzk;
        Intent intent2 = new Intent(new ObfuscatedString(new long[]{5148608520523031282L, -366029008194309822L, -4716149750094298206L, 2909491478130840298L, 6751510534361904169L}).toString());
        intent2.setData(Uri.parse(new ObfuscatedString(new long[]{-4100101725246812896L, 8942889463697726859L}).toString()));
        zzbvuVar.zzc(zzbfmVar2.zza(intent2));
        zzbvuVar.zza(this.zzk.zzb());
        zzbvuVar.zzd(this.zzk.zzc());
        zzbvuVar.zzb(true);
        z = zzbvuVar.zza;
        z2 = zzbvuVar.zzb;
        z3 = zzbvuVar.zzc;
        z4 = zzbvuVar.zzd;
        z5 = zzbvuVar.zze;
        zzcjk zzcjkVar = this.zzh;
        try {
            jSONObject = new JSONObject().put(new ObfuscatedString(new long[]{79486861201653240L, 8207583343754744632L}).toString(), z).put(new ObfuscatedString(new long[]{-6116908786593620959L, -8082629473367715726L}).toString(), z2).put(new ObfuscatedString(new long[]{-5001498802481162031L, 3453317487236827513L}).toString(), z3).put(new ObfuscatedString(new long[]{3874675577177671354L, -2969169040061323389L, -3808789198512588731L}).toString(), z4).put(new ObfuscatedString(new long[]{-9148435687487118875L, 9008463567632607363L, 5351089157474758506L}).toString(), z5);
        } catch (JSONException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-6974199107976864666L, -5935975480208941882L, -1906341413915274737L, 6878481646539826426L, 9024250081921638194L, -7719170177072159314L, 2497454067069360324L, -6081869734427277465L}).toString(), e);
            jSONObject = null;
        }
        zzcjkVar.zze(new ObfuscatedString(new long[]{-5379066162861726015L, 3594986468552203831L, -3518113957664528049L, -2511645682240801746L}).toString(), jSONObject);
        int[] iArr = new int[2];
        this.zzh.getLocationOnScreen(iArr);
        zzb(com.google.android.gms.ads.internal.client.zzay.zzb().zzb(this.zzi, iArr[0]), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(this.zzi, iArr[1]));
        if (zzcec.zzm(2)) {
            zzcec.zzi(new ObfuscatedString(new long[]{-8478193168713711712L, 4249638922044874270L, -4281377121785338692L, -137831666198942093L}).toString());
        }
        zzi(this.zzh.zzn().zza);
    }

    public final void zzb(int i, int i2) {
        int i3;
        Context context = this.zzi;
        int i4 = 0;
        if (context instanceof Activity) {
            com.google.android.gms.ads.internal.zzt.zzp();
            i3 = com.google.android.gms.ads.internal.util.zzt.zzQ((Activity) context)[0];
        } else {
            i3 = 0;
        }
        if (this.zzh.zzO() == null || !this.zzh.zzO().zzi()) {
            zzcjk zzcjkVar = this.zzh;
            int width = zzcjkVar.getWidth();
            int height = zzcjkVar.getHeight();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzR)).booleanValue()) {
                if (width == 0) {
                    if (this.zzh.zzO() != null) {
                        width = this.zzh.zzO().zzb;
                    } else {
                        width = 0;
                    }
                }
                if (height == 0) {
                    if (this.zzh.zzO() != null) {
                        i4 = this.zzh.zzO().zza;
                    }
                    this.zzf = com.google.android.gms.ads.internal.client.zzay.zzb().zzb(this.zzi, width);
                    this.zzg = com.google.android.gms.ads.internal.client.zzay.zzb().zzb(this.zzi, i4);
                }
            }
            i4 = height;
            this.zzf = com.google.android.gms.ads.internal.client.zzay.zzb().zzb(this.zzi, width);
            this.zzg = com.google.android.gms.ads.internal.client.zzay.zzb().zzb(this.zzi, i4);
        }
        zzg(i, i2 - i3, this.zzf, this.zzg);
        this.zzh.zzN().zzC(i, i2);
    }
}
