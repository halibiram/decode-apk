package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public class zzhgo implements Iterator, Closeable, zzarn {
    private static final zzarm zza = new zzhgn(new ObfuscatedString(new long[]{-456986500473339189L, 4063800878611159395L}).toString());
    private static final zzhgv zzb = zzhgv.zzb(zzhgo.class);
    protected zzarj zzc;
    protected zzhgp zzd;
    zzarm zze = null;
    long zzf = 0;
    long zzg = 0;
    private final List zzh = new ArrayList();

    public void close() {
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        zzarm zzarmVar = this.zze;
        if (zzarmVar == zza) {
            return false;
        }
        if (zzarmVar != null) {
            return true;
        }
        try {
            this.zze = next();
            return true;
        } catch (NoSuchElementException unused) {
            this.zze = zza;
            return false;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(new ObfuscatedString(new long[]{-2992475265645743655L, -1929674573110941535L}).toString());
        for (int i = 0; i < this.zzh.size(); i++) {
            if (i > 0) {
                sb.append(new ObfuscatedString(new long[]{8961600101436270301L, -56716886281886462L}).toString());
            }
            sb.append(((zzarm) this.zzh.get(i)).toString());
        }
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1389210530961574204L, -4618833946190247199L}), sb);
    }

    @Override // java.util.Iterator
    /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final zzarm next() {
        zzarm zzb2;
        zzarm zzarmVar = this.zze;
        if (zzarmVar != null && zzarmVar != zza) {
            this.zze = null;
            return zzarmVar;
        }
        zzhgp zzhgpVar = this.zzd;
        if (zzhgpVar != null && this.zzf < this.zzg) {
            try {
                synchronized (zzhgpVar) {
                    this.zzd.zze(this.zzf);
                    zzb2 = this.zzc.zzb(this.zzd, this);
                    this.zzf = this.zzd.zzb();
                }
                return zzb2;
            } catch (EOFException unused) {
                throw new NoSuchElementException();
            } catch (IOException unused2) {
                throw new NoSuchElementException();
            }
        }
        this.zze = zza;
        throw new NoSuchElementException();
    }

    public final List zze() {
        if (this.zzd != null && this.zze != zza) {
            return new zzhgu(this.zzh, this);
        }
        return this.zzh;
    }

    public final void zzf(zzhgp zzhgpVar, long j, zzarj zzarjVar) {
        this.zzd = zzhgpVar;
        this.zzf = zzhgpVar.zzb();
        zzhgpVar.zze(zzhgpVar.zzb() + j);
        this.zzg = zzhgpVar.zzb();
        this.zzc = zzarjVar;
    }
}
