package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.core.view.PointerIconCompat;
import app.tunnel.logger.utils.TrafficData;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;

/* loaded from: classes2.dex */
public final class zzhw extends zzgq {
    private final Context zza;

    @Nullable
    private zzhb zzb;

    @Nullable
    private AssetFileDescriptor zzc;

    @Nullable
    private InputStream zzd;
    private long zze;
    private boolean zzf;

    public zzhw(Context context) {
        super(false);
        this.zza = context.getApplicationContext();
    }

    @Deprecated
    public static Uri buildRawResourceUri(int i) {
        return Uri.parse(new ObfuscatedString(new long[]{-1174347241260928060L, -8903811511752925079L, 3693103749569912432L}).toString() + i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0063, code lost:
    
        if (r3.matches(new com.panda912.muddy.ObfuscatedString(new long[]{3634315479540299027L, 2854760059381542515L}).toString()) != false) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x015f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0160  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static AssetFileDescriptor zzk(Context context, zzhb zzhbVar) {
        Resources resources;
        int parseInt;
        AssetFileDescriptor openRawResourceFd;
        String host;
        Uri normalizeScheme = zzhbVar.zza.normalizeScheme();
        try {
            if (!TextUtils.equals(new ObfuscatedString(new long[]{7221818139829688400L, 3655751682594852393L, 1376229680481805869L}).toString(), normalizeScheme.getScheme())) {
                if (TextUtils.equals(new ObfuscatedString(new long[]{-2502457871090633353L, -1101621509945263061L, 1930002684433274418L}).toString(), normalizeScheme.getScheme()) && normalizeScheme.getPathSegments().size() == 1) {
                    String lastPathSegment = normalizeScheme.getLastPathSegment();
                    lastPathSegment.getClass();
                }
                if (TextUtils.equals(new ObfuscatedString(new long[]{4190990417077479867L, 3340955908337080180L, -7234838231551098755L}).toString(), normalizeScheme.getScheme())) {
                    String path = normalizeScheme.getPath();
                    path.getClass();
                    if (path.startsWith(new ObfuscatedString(new long[]{8175448853356428775L, -2965549600029406343L}).toString())) {
                        path = path.substring(1);
                    }
                    if (TextUtils.isEmpty(normalizeScheme.getHost())) {
                        host = context.getPackageName();
                    } else {
                        host = normalizeScheme.getHost();
                    }
                    if (host.equals(context.getPackageName())) {
                        resources = context.getResources();
                    } else {
                        try {
                            resources = context.getPackageManager().getResourcesForApplication(host);
                        } catch (PackageManager.NameNotFoundException e) {
                            throw new zzhv(new ObfuscatedString(new long[]{1204149463931242271L, -5528784438165060949L, -4856271940605794564L, -7677417670248636340L, -1981881562477292426L, -1405328027151982915L, -3122250866583234452L, 8984878674183986251L, 9042415549497994352L, -8494012727967569582L, 6700646363398991050L, 125188282647195593L}).toString(), e, 2005);
                        }
                    }
                    parseInt = resources.getIdentifier(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-5514932955459829379L, 6016422814983551234L}), AbstractC0749x8313616e.m3341xc20437a5(host), path), new ObfuscatedString(new long[]{-5348355802778397248L, 8810449638439846998L}).toString(), null);
                    if (parseInt == 0) {
                        throw new zzhv(new ObfuscatedString(new long[]{-4694816331170761559L, -3799306118366746357L, 4295838857332035546L, 1920403998946808878L}).toString(), null, 2005);
                    }
                    try {
                        openRawResourceFd = resources.openRawResourceFd(parseInt);
                        if (openRawResourceFd == null) {
                            return openRawResourceFd;
                        }
                        throw new zzhv(new ObfuscatedString(new long[]{-6869148093714448984L, 6734444160315906984L, 1895623965824039458L, 3258275536219845607L}).toString().concat(String.valueOf(normalizeScheme)), null, TrafficData.INTERVAL_TIME);
                    } catch (Resources.NotFoundException e2) {
                        throw new zzhv(null, e2, 2005);
                    }
                }
                String scheme = normalizeScheme.getScheme();
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{8187646824506997610L, -6824054897171380085L, -1553820238411242955L, 8890185885511877042L}).toString());
                sb.append(scheme);
                throw new zzhv(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-221604148663092851L, -1700071870001564894L, -3124963944584398180L, -990022521333656938L, 4228067536846533613L, 5935476589472560841L}), sb), null, PointerIconCompat.TYPE_WAIT);
            }
            String lastPathSegment2 = normalizeScheme.getLastPathSegment();
            if (lastPathSegment2 != null) {
                parseInt = Integer.parseInt(lastPathSegment2);
                openRawResourceFd = resources.openRawResourceFd(parseInt);
                if (openRawResourceFd == null) {
                }
            } else {
                throw null;
            }
        } catch (NumberFormatException unused) {
            throw new zzhv(new ObfuscatedString(new long[]{2893576892043067508L, 6899810589131928379L, 1991976016628099095L, 8581900237592388322L, -8527023980633338469L, 7820372554097841201L}).toString(), null, PointerIconCompat.TYPE_WAIT);
        }
        resources = context.getResources();
    }

    @Override // com.google.android.gms.internal.ads.zzu
    public final int zza(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.zze;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new zzhv(null, e, TrafficData.INTERVAL_TIME);
            }
        }
        InputStream inputStream = this.zzd;
        int i3 = zzfy.zza;
        int read = inputStream.read(bArr, i, i2);
        if (read == -1) {
            if (this.zze == -1) {
                return -1;
            }
            throw new zzhv(new ObfuscatedString(new long[]{3270959849745945710L, 3037466533127842592L, 5600708600260005139L, 2785688538426393903L, -8094915544638028850L, 930628289437408739L, -5796597052489824771L, -9134375146571049356L}).toString(), new EOFException(), TrafficData.INTERVAL_TIME);
        }
        long j2 = this.zze;
        if (j2 != -1) {
            this.zze = j2 - read;
        }
        zzg(read);
        return read;
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final long zzb(zzhb zzhbVar) {
        long j;
        this.zzb = zzhbVar;
        zzi(zzhbVar);
        AssetFileDescriptor zzk = zzk(this.zza, zzhbVar);
        this.zzc = zzk;
        long length = zzk.getLength();
        FileInputStream fileInputStream = new FileInputStream(this.zzc.getFileDescriptor());
        this.zzd = fileInputStream;
        if (length != -1) {
            try {
                if (zzhbVar.zzf > length) {
                    throw new zzhv(null, null, 2008);
                }
            } catch (zzhv e) {
                throw e;
            } catch (IOException e2) {
                throw new zzhv(null, e2, TrafficData.INTERVAL_TIME);
            }
        }
        long startOffset = this.zzc.getStartOffset();
        long skip = fileInputStream.skip(zzhbVar.zzf + startOffset) - startOffset;
        if (skip == zzhbVar.zzf) {
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                if (channel.size() == 0) {
                    this.zze = -1L;
                    j = -1;
                } else {
                    j = channel.size() - channel.position();
                    this.zze = j;
                    if (j < 0) {
                        throw new zzhv(null, null, 2008);
                    }
                }
            } else {
                j = length - skip;
                this.zze = j;
                if (j < 0) {
                    throw new zzgx(2008);
                }
            }
            long j2 = zzhbVar.zzg;
            if (j2 != -1) {
                if (j != -1) {
                    j2 = Math.min(j, j2);
                }
                this.zze = j2;
            }
            this.zzf = true;
            zzj(zzhbVar);
            long j3 = zzhbVar.zzg;
            if (j3 != -1) {
                return j3;
            }
            return this.zze;
        }
        throw new zzhv(null, null, 2008);
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    @Nullable
    public final Uri zzc() {
        zzhb zzhbVar = this.zzb;
        if (zzhbVar != null) {
            return zzhbVar.zza;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zzd() {
        this.zzb = null;
        try {
            try {
                try {
                    InputStream inputStream = this.zzd;
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    this.zzd = null;
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.zzc;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.zzc = null;
                        if (this.zzf) {
                            this.zzf = false;
                            zzh();
                        }
                    } catch (IOException e) {
                        throw new zzhv(null, e, TrafficData.INTERVAL_TIME);
                    }
                } catch (IOException e2) {
                    throw new zzhv(null, e2, TrafficData.INTERVAL_TIME);
                }
            } catch (Throwable th) {
                this.zzd = null;
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.zzc;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.zzc = null;
                    if (this.zzf) {
                        this.zzf = false;
                        zzh();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new zzhv(null, e3, TrafficData.INTERVAL_TIME);
                }
            }
        } catch (Throwable th2) {
            this.zzc = null;
            if (this.zzf) {
                this.zzf = false;
                zzh();
            }
            throw th2;
        }
    }
}
