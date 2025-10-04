package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzik;
import com.google.android.gms.internal.measurement.zzil;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class zzil<MessageType extends zzil<MessageType, BuilderType>, BuilderType extends zzik<MessageType, BuilderType>> implements zzlj {
    protected int zzb = 0;

    public static void zzbw(Iterable iterable, List list) {
        zzkk.zze(iterable);
        if (iterable instanceof zzkr) {
            List zzh = ((zzkr) iterable).zzh();
            zzkr zzkrVar = (zzkr) list;
            int size = list.size();
            for (Object obj : zzh) {
                if (obj == null) {
                    int size2 = zzkrVar.size();
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{-6477694238604440802L, -7039830578155653817L, -7515995129395200751L, -7949313101444741064L}).toString());
                    sb.append(size2 - size);
                    String m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2201172110126723285L, 1534930088518029514L, -6991140590203657219L}), sb);
                    int size3 = zzkrVar.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            break;
                        } else {
                            zzkrVar.remove(size3);
                        }
                    }
                    throw new NullPointerException(m3332x9d12c1f4);
                }
                if (obj instanceof zzjb) {
                    zzkrVar.zzi((zzjb) obj);
                } else {
                    zzkrVar.add((String) obj);
                }
            }
            return;
        }
        if (!(iterable instanceof zzlq)) {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(((Collection) iterable).size() + list.size());
            }
            int size4 = list.size();
            for (Object obj2 : iterable) {
                if (obj2 == null) {
                    int size5 = list.size();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(new ObfuscatedString(new long[]{-7760714211513256391L, -7318032161165499318L, 8054080659686784067L, 6840405493872500646L}).toString());
                    sb2.append(size5 - size4);
                    String m3332x9d12c1f42 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-198017951389434273L, 6275521895116467676L, -6201258407890099289L}), sb2);
                    int size6 = list.size();
                    while (true) {
                        size6--;
                        if (size6 < size4) {
                            break;
                        } else {
                            list.remove(size6);
                        }
                    }
                    throw new NullPointerException(m3332x9d12c1f42);
                }
                list.add(obj2);
            }
            return;
        }
        list.addAll((Collection) iterable);
    }

    public int zzbu() {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlj
    public final zzjb zzbv() {
        try {
            int zzbz = zzbz();
            zzjb zzjbVar = zzjb.zzb;
            byte[] bArr = new byte[zzbz];
            zzjj zzC = zzjj.zzC(bArr);
            zzbN(zzC);
            zzC.zzD();
            return new zziy(bArr);
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-1633137787335663840L, -1781255423353240329L, -8752210595083633194L}).toString());
            sb.append(name);
            throw new RuntimeException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7816278417122463083L, 3365679134548745923L, -3221989040376773210L, 705211592375435402L, 3540075540245126224L, -6769244863913629691L, -3838887173074678117L, -2713734081258844704L, -3314079022359542977L}), sb), e);
        }
    }

    public void zzbx(int i) {
        throw null;
    }

    public final byte[] zzby() {
        try {
            byte[] bArr = new byte[zzbz()];
            zzjj zzC = zzjj.zzC(bArr);
            zzbN(zzC);
            zzC.zzD();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-8835863926152809922L, -7039856354301931298L, -5200686102697594065L}).toString());
            sb.append(name);
            throw new RuntimeException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2525928995651509476L, -5161145339478869627L, 3995034072193568967L, 4937188693972785367L, 3754268803516446654L, -430627508201408481L, -3894282834038090573L, 6952982861762370877L, 2398109513893591866L}), sb), e);
        }
    }
}
