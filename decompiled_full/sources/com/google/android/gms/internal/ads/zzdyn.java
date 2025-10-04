package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.util.Base64;
import com.google.android.gms.common.wrappers.Wrappers;
import com.panda912.muddy.ObfuscatedString;
import java.io.ByteArrayOutputStream;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzdyn {
    private final Context zza;
    private final ApplicationInfo zzb;
    private String zze = new ObfuscatedString(new long[]{1449067708558607278L}).toString();
    private final int zzc = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzja)).intValue();
    private final int zzd = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjb)).intValue();

    public zzdyn(Context context) {
        this.zza = context;
        this.zzb = context.getApplicationInfo();
    }

    public final JSONObject zza() {
        String str;
        String encodeToString;
        JSONObject jSONObject = new JSONObject();
        try {
            String obfuscatedString = new ObfuscatedString(new long[]{-5262384395103165349L, 3993838618670273206L}).toString();
            Context context = this.zza;
            String str2 = this.zzb.packageName;
            zzftt zzfttVar = com.google.android.gms.ads.internal.util.zzt.zza;
            jSONObject.put(obfuscatedString, Wrappers.packageManager(context).getApplicationLabel(str2));
        } catch (PackageManager.NameNotFoundException unused) {
        }
        jSONObject.put(new ObfuscatedString(new long[]{-3560110915162877507L, 3186469693953253951L, -7415089471888320638L}).toString(), this.zzb.packageName);
        com.google.android.gms.ads.internal.zzt.zzp();
        Drawable drawable = null;
        try {
            str = com.google.android.gms.ads.internal.util.zzt.zzp(this.zza);
        } catch (RemoteException unused2) {
            str = null;
        }
        jSONObject.put(new ObfuscatedString(new long[]{7247030518292699412L, -1389161189656954750L, 2369436306303233886L}).toString(), str);
        if (this.zze.isEmpty()) {
            try {
                drawable = Wrappers.packageManager(this.zza).getApplicationLabelAndIcon(this.zzb.packageName).second;
            } catch (PackageManager.NameNotFoundException unused3) {
            }
            if (drawable == null) {
                encodeToString = new ObfuscatedString(new long[]{-169862593991555067L}).toString();
            } else {
                drawable.setBounds(0, 0, this.zzc, this.zzd);
                Bitmap createBitmap = Bitmap.createBitmap(this.zzc, this.zzd, Bitmap.Config.ARGB_8888);
                drawable.draw(new Canvas(createBitmap));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                createBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
            }
            this.zze = encodeToString;
        }
        if (!this.zze.isEmpty()) {
            jSONObject.put(new ObfuscatedString(new long[]{-8283597269779729422L, -5928602632094149678L}).toString(), this.zze);
            jSONObject.put(new ObfuscatedString(new long[]{-4120612848234265572L, -8883680977183216860L, -2464143579662478711L}).toString(), this.zzc);
            jSONObject.put(new ObfuscatedString(new long[]{-6427534036960499225L, -3672748067731952624L, 8912268383008140222L}).toString(), this.zzd);
        }
        return jSONObject;
    }
}
