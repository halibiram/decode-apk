package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@Deprecated
/* loaded from: classes2.dex */
public final class zzbgl {
    public static final void zza(zzbgk zzbgkVar, @Nullable zzbgi zzbgiVar) {
        if (zzbgiVar.zza() != null) {
            if (!TextUtils.isEmpty(zzbgiVar.zzb())) {
                zzbgkVar.zzd(zzbgiVar.zza(), zzbgiVar.zzb(), zzbgiVar.zzc(), zzbgiVar.zzd());
                return;
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-3782830061782623010L, -3365355862462860701L, 1331655055184309269L, 5076900831889892784L, 7117257698758623926L, 4516291676579462328L, -4893657427369182892L, -7838307261095290290L, -3567183012650213809L, 8556079440894182950L, 5287853896727651400L, 637004777947168545L}).toString());
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-6892863037552854059L, 6381550341058434655L, -7553284873101060308L, -2944822345406047863L, -7752459582057128207L, -178360939571615290L, -1758189747764898757L, 1461446911739872854L, 298020566947631826L, 7721850806638267723L}).toString());
    }
}
