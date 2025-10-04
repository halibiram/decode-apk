package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.core.view.PointerIconCompat;
import app.tunnel.logger.utils.TrafficData;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;

/* loaded from: classes2.dex */
public class zzhp extends zzgx {
    public final zzhb zzb;
    public final int zzc;

    public zzhp(zzhb zzhbVar, int i, int i2) {
        super(zzb(2008, 1));
        this.zzb = zzhbVar;
        this.zzc = 1;
    }

    public static zzhp zza(IOException iOException, zzhb zzhbVar, int i) {
        int i2;
        String message = iOException.getMessage();
        if (iOException instanceof SocketTimeoutException) {
            i2 = 2002;
        } else if (iOException instanceof InterruptedIOException) {
            i2 = PointerIconCompat.TYPE_WAIT;
        } else if (message != null && zzfwk.zza(message).matches(new ObfuscatedString(new long[]{-5507748261174548020L, 3920034601838783288L, -2520220441915030823L, -4406784905548110975L, -4013295096897360317L}).toString())) {
            i2 = 2007;
        } else {
            i2 = 2001;
        }
        if (i2 == 2007) {
            return new zzho(iOException, zzhbVar);
        }
        return new zzhp(iOException, zzhbVar, i2, i);
    }

    private static int zzb(int i, int i2) {
        if (i != 2000) {
            return i;
        }
        if (i2 != 1) {
            return TrafficData.INTERVAL_TIME;
        }
        return 2001;
    }

    public zzhp(IOException iOException, zzhb zzhbVar, int i, int i2) {
        super(iOException, zzb(i, i2));
        this.zzb = zzhbVar;
        this.zzc = i2;
    }

    public zzhp(String str, zzhb zzhbVar, int i, int i2) {
        super(str, zzb(i, i2));
        this.zzb = zzhbVar;
        this.zzc = i2;
    }

    public zzhp(String str, @Nullable IOException iOException, zzhb zzhbVar, int i, int i2) {
        super(str, iOException, zzb(i, i2));
        this.zzb = zzhbVar;
        this.zzc = i2;
    }
}
