package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfwh {
    private static final zzfvt zza = new zzfvt(new ObfuscatedString(new long[]{6961771288934463602L, 8489656489937010824L, -5801733464121659443L, -1370627869469667885L, -7350507025958215067L}).toString());

    public static boolean zza(Context context) {
        try {
            if (context.getPackageManager().getApplicationInfo(new ObfuscatedString(new long[]{8479946047782077228L, 4625639199855752266L, -7593127182030390266L, 5755778981949205787L}).toString(), 0).enabled) {
                Signature[] signatureArr = context.getPackageManager().getPackageInfo(new ObfuscatedString(new long[]{-5869132988172373048L, -5538372487394371193L, -5363506097959202636L, -5443995437183379937L}).toString(), 64).signatures;
                if (signatureArr != null && (signatureArr.length) != 0) {
                    for (Signature signature : signatureArr) {
                        String zza2 = zzfwg.zza(signature.toByteArray());
                        if (!new ObfuscatedString(new long[]{-3613599316177716814L, -5567769260740651370L, -6163880304888338367L, -5733532478559393633L, -2473544798001385793L, -3574748779100985279L, 762874685602178913L}).toString().equals(zza2)) {
                            String str = Build.TAGS;
                            if ((!str.contains(new ObfuscatedString(new long[]{-4831965510875134277L, -4665912324859658415L}).toString()) && !str.contains(new ObfuscatedString(new long[]{-3412324376852134041L, -871634162797736006L, 7598683731523137360L}).toString())) || !new ObfuscatedString(new long[]{3756853405191653390L, -4141931560341445540L, 3015189200088209735L, -752067189406472885L, 2559499696949043237L, 1975823516036101242L, 643485272322488047L}).toString().equals(zza2)) {
                            }
                        }
                        return true;
                    }
                }
                zza.zzd(new ObfuscatedString(new long[]{-9014672276248536851L, 8614201415640124688L, -8008802740446941470L, -3111022878198906158L, 6924934264539019087L, -2150123044862696796L, -6107344937819859438L, 6961919912164850190L, -825357339928582987L, 5333395173761450961L, 8758286856636778551L}).toString(), new Object[0]);
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }
}
