package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import app.tunnel.logger.utils.TrafficData;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;

/* loaded from: classes2.dex */
public final class zzia extends zzgq {
    private final byte[] zza;
    private final DatagramPacket zzb;

    @Nullable
    private Uri zzc;

    @Nullable
    private DatagramSocket zzd;

    @Nullable
    private MulticastSocket zze;

    @Nullable
    private InetAddress zzf;
    private boolean zzg;
    private int zzh;

    public zzia() {
        this(TrafficData.INTERVAL_TIME);
    }

    @Override // com.google.android.gms.internal.ads.zzu
    public final int zza(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (this.zzh == 0) {
            try {
                DatagramSocket datagramSocket = this.zzd;
                if (datagramSocket != null) {
                    datagramSocket.receive(this.zzb);
                    int length = this.zzb.getLength();
                    this.zzh = length;
                    zzg(length);
                } else {
                    throw null;
                }
            } catch (SocketTimeoutException e) {
                throw new zzhz(e, 2002);
            } catch (IOException e2) {
                throw new zzhz(e2, 2001);
            }
        }
        int length2 = this.zzb.getLength();
        int i3 = this.zzh;
        int min = Math.min(i3, i2);
        System.arraycopy(this.zza, length2 - i3, bArr, i, min);
        this.zzh -= min;
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final long zzb(zzhb zzhbVar) {
        Uri uri = zzhbVar.zza;
        this.zzc = uri;
        String host = uri.getHost();
        host.getClass();
        int port = this.zzc.getPort();
        zzi(zzhbVar);
        try {
            this.zzf = InetAddress.getByName(host);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.zzf, port);
            if (this.zzf.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.zze = multicastSocket;
                multicastSocket.joinGroup(this.zzf);
                this.zzd = this.zze;
            } else {
                this.zzd = new DatagramSocket(inetSocketAddress);
            }
            this.zzd.setSoTimeout(8000);
            this.zzg = true;
            zzj(zzhbVar);
            return -1L;
        } catch (IOException e) {
            throw new zzhz(e, 2001);
        } catch (SecurityException e2) {
            throw new zzhz(e2, 2006);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    @Nullable
    public final Uri zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zzd() {
        InetAddress inetAddress;
        this.zzc = null;
        MulticastSocket multicastSocket = this.zze;
        if (multicastSocket != null) {
            try {
                inetAddress = this.zzf;
            } catch (IOException unused) {
            }
            if (inetAddress != null) {
                multicastSocket.leaveGroup(inetAddress);
                this.zze = null;
            } else {
                throw null;
            }
        }
        DatagramSocket datagramSocket = this.zzd;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.zzd = null;
        }
        this.zzf = null;
        this.zzh = 0;
        if (this.zzg) {
            this.zzg = false;
            zzh();
        }
    }

    public zzia(int i) {
        super(true);
        byte[] bArr = new byte[TrafficData.INTERVAL_TIME];
        this.zza = bArr;
        this.zzb = new DatagramPacket(bArr, 0, TrafficData.INTERVAL_TIME);
    }
}
