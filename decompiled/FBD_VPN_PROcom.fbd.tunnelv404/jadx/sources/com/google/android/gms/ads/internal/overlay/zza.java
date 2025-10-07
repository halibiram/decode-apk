package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zza {
    public static final boolean zza(Context context, Intent intent, zzaa zzaaVar, @Nullable zzy zzyVar, boolean z) {
        if (z) {
            return zzc(context, intent.getData(), zzaaVar, zzyVar);
        }
        try {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{7391358667086246926L, 6220155362768878370L, -1986206327106757716L, -494654827717436411L}).toString() + intent.toURI());
            com.google.android.gms.ads.internal.zzt.zzp();
            com.google.android.gms.ads.internal.util.zzt.zzS(context, intent);
            if (zzaaVar != null) {
                zzaaVar.zzg();
            }
            if (zzyVar != null) {
                zzyVar.zza(true);
            }
            return true;
        } catch (ActivityNotFoundException e) {
            zzcec.zzj(e.getMessage());
            if (zzyVar != null) {
                zzyVar.zza(false);
            }
            return false;
        }
    }

    public static final boolean zzb(Context context, @Nullable zzc zzcVar, zzaa zzaaVar, @Nullable zzy zzyVar) {
        int i = 0;
        if (zzcVar == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{-4245087986384804447L, 1772618591436541104L, 2081942515108178743L, -6798821169232635076L, 3049955929305708600L, -1922623699456342325L}).toString());
            return false;
        }
        zzbgc.zza(context);
        Intent intent = zzcVar.zzh;
        if (intent != null) {
            return zza(context, intent, zzaaVar, zzyVar, zzcVar.zzj);
        }
        Intent intent2 = new Intent();
        if (TextUtils.isEmpty(zzcVar.zzb)) {
            zzcec.zzj(new ObfuscatedString(new long[]{-565281117219118503L, -8601787717638393912L, -7395467565476443569L, 8975327914603712435L, -2350047996227273067L}).toString());
            return false;
        }
        if (!TextUtils.isEmpty(zzcVar.zzc)) {
            String str = zzcVar.zzb;
            intent2.setDataAndType(Uri.parse(str), zzcVar.zzc);
        } else {
            intent2.setData(Uri.parse(zzcVar.zzb));
        }
        intent2.setAction(new ObfuscatedString(new long[]{-5809894549614208743L, -7733801899844312385L, 3553735208332331036L, -3188017872294018208L, 2300702401916488397L}).toString());
        if (!TextUtils.isEmpty(zzcVar.zzd)) {
            intent2.setPackage(zzcVar.zzd);
        }
        if (!TextUtils.isEmpty(zzcVar.zze)) {
            String[] split = zzcVar.zze.split(new ObfuscatedString(new long[]{3643141792099458110L, -1871706334084330129L}).toString(), 2);
            if (split.length < 2) {
                zzcec.zzj(new ObfuscatedString(new long[]{-4171284819309634301L, 3244134322947262686L, -4173521465931232001L, 7708898103779040442L, -4852346988720493446L, 7730742950430978084L, 1392410850489362324L}).toString().concat(String.valueOf(zzcVar.zze)));
                return false;
            }
            intent2.setClassName(split[0], split[1]);
        }
        String str2 = zzcVar.zzf;
        if (!TextUtils.isEmpty(str2)) {
            try {
                i = Integer.parseInt(str2);
            } catch (NumberFormatException unused) {
                zzcec.zzj(new ObfuscatedString(new long[]{6407324649340740487L, -7358898938935561258L, 3304972462085502330L, -5525233851695213024L, -3677494504007662247L}).toString());
            }
            intent2.addFlags(i);
        }
        if (((Boolean) zzba.zzc().zza(zzbgc.zzev)).booleanValue()) {
            intent2.addFlags(268435456);
            intent2.putExtra(new ObfuscatedString(new long[]{3051717053363799192L, -2150096999348394789L, 467001474242516771L, -3234309398824923490L, -26537254962666855L, -2572509869960213269L, -665500779084638951L}).toString(), true);
        } else {
            if (((Boolean) zzba.zzc().zza(zzbgc.zzeu)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzp();
                com.google.android.gms.ads.internal.util.zzt.zzo(context, intent2);
            }
        }
        return zza(context, intent2, zzaaVar, zzyVar, zzcVar.zzj);
    }

    private static final boolean zzc(Context context, Uri uri, zzaa zzaaVar, zzy zzyVar) {
        int i;
        try {
            i = com.google.android.gms.ads.internal.zzt.zzp().zzm(context, uri);
            if (zzaaVar != null) {
                zzaaVar.zzg();
            }
        } catch (ActivityNotFoundException e) {
            zzcec.zzj(e.getMessage());
            i = 6;
        }
        if (zzyVar != null) {
            zzyVar.zzb(i);
        }
        if (i != 5) {
            return false;
        }
        return true;
    }
}
