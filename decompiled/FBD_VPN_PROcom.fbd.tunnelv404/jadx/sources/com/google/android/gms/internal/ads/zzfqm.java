package com.google.android.gms.internal.ads;

import android.os.Build;
import androidx.annotation.VisibleForTesting;
import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;
import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import kotlin.io.encoding.Base64;
import okio.Utf8;

/* loaded from: classes2.dex */
public final class zzfqm {

    @VisibleForTesting
    protected static final byte[] zza = {Base64.padSymbol, 122, Ascii.DC2, 35, 1, -102, -93, -99, -98, -96, -29, 67, 106, -73, -64, -119, 107, -5, 79, -74, 121, -12, -34, 95, -25, -62, Utf8.REPLACEMENT_BYTE, 50, 108, -113, -103, 74};

    @VisibleForTesting
    protected static final byte[] zzb = {-110, -13, -34, 70, -83, 43, 97, Ascii.NAK, -44, Ascii.DLE, -54, -125, -28, -57, -125, -127, -7, 17, 102, -69, 116, -121, -79, 43, -13, 120, 58, 55, -29, -108, 95, 83};
    private final byte[] zzc = zzb;
    private final byte[] zzd = zza;

    public final boolean zza(File file) {
        try {
            X509Certificate[][] zza2 = zzapg.zza(file.getAbsolutePath());
            if (zza2.length == 1) {
                byte[] digest = MessageDigest.getInstance(new ObfuscatedString(new long[]{5756672945441205465L, -541477336279000933L}).toString()).digest(zza2[0][0].getEncoded());
                if (Arrays.equals(this.zzd, digest)) {
                    return true;
                }
                if (!new ObfuscatedString(new long[]{-7861355644980415726L, 9137554161826239803L}).toString().equals(Build.TYPE) && Arrays.equals(this.zzc, digest)) {
                    return true;
                }
                return false;
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-2582735677422427174L, -5584900145870504521L, -7525908577070135905L, 4046831982889712161L, -8317665696852080059L}).toString());
        } catch (zzapd e) {
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-2003397003588108094L, 5310013884832608650L, -5758434841517990477L, 5216597987866487270L}).toString(), e);
        } catch (IOException e2) {
            e = e2;
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{2664959591777915845L, -583407886572568077L, 5535615836757499688L, 3471561494847308758L, 3175079606427373240L}).toString(), e);
        } catch (RuntimeException e3) {
            e = e3;
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{2664959591777915845L, -583407886572568077L, 5535615836757499688L, 3471561494847308758L, 3175079606427373240L}).toString(), e);
        }
    }
}
