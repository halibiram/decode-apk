package com.google.android.gms.internal.ads;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLU;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzeu {
    public static void zza() {
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError == 0) {
                break;
            }
            if (z) {
                sb.append('\n');
            }
            String gluErrorString = GLU.gluErrorString(glGetError);
            if (gluErrorString == null) {
                gluErrorString = new ObfuscatedString(new long[]{5866356729134150888L, -112527258518184401L, 2873924796113858124L}).toString().concat(String.valueOf(Integer.toHexString(glGetError)));
            }
            sb.append(new ObfuscatedString(new long[]{4526574917593125698L, -6966823451738288888L, 7715880129268300528L}).toString());
            sb.append(gluErrorString);
            z = true;
        }
        if (!z) {
        } else {
            throw new zzet(sb.toString());
        }
    }

    public static void zzb(boolean z, String str) {
        if (z) {
        } else {
            throw new zzet(str);
        }
    }

    public static boolean zzc(Context context) {
        int i = zzfy.zza;
        if (i >= 24) {
            if (i >= 26 || (!new ObfuscatedString(new long[]{2045830783056190036L, 593546234340239029L}).toString().equals(zzfy.zzc) && !new ObfuscatedString(new long[]{-6448090341206481454L, -6431355149035223243L}).toString().equals(zzfy.zzd))) {
                if (i < 26 && !context.getPackageManager().hasSystemFeature(new ObfuscatedString(new long[]{-814081882897900918L, 5579584635484672973L, -3828319224372306303L, -6038247125368631293L, -1304095016401838008L, 3813844972868002108L}).toString())) {
                    return false;
                }
                return zzes.zzk(new ObfuscatedString(new long[]{-6394018665696840834L, 142377995644381117L, 4782362804622807641L, 3365366815670155973L, -2227343072459629896L}).toString());
            }
            return false;
        }
        return false;
    }

    public static boolean zzd() {
        int i = zzfy.zza;
        if (zzes.zzk(new ObfuscatedString(new long[]{4938250491858607411L, -4572044372360860316L, -1409527168469102483L, 2370152093565831406L, 7912226278921267824L}).toString())) {
            return true;
        }
        return false;
    }
}
