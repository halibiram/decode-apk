package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgxs;
import com.google.android.gms.internal.ads.zzgxt;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class zzgxt<MessageType extends zzgxt<MessageType, BuilderType>, BuilderType extends zzgxs<MessageType, BuilderType>> implements zzhbe {
    protected int zza = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public static void zzav(Iterable iterable, List list) {
        byte[] bArr = zzhae.zzd;
        iterable.getClass();
        if (iterable instanceof zzham) {
            List zzh = ((zzham) iterable).zzh();
            zzham zzhamVar = (zzham) list;
            int size = list.size();
            for (Object obj : zzh) {
                if (obj == null) {
                    int size2 = zzhamVar.size() - size;
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{-776700446701728448L, -4052535472756167582L, 3648725880326488000L, 8511369079800961865L}).toString());
                    sb.append(size2);
                    String m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-9004140385238052078L, 5221298425199156624L, 3217269162319493292L}), sb);
                    int size3 = zzhamVar.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            break;
                        } else {
                            zzhamVar.remove(size3);
                        }
                    }
                    throw new NullPointerException(m3332x9d12c1f4);
                }
                if (obj instanceof zzgyl) {
                    zzhamVar.zzi((zzgyl) obj);
                } else {
                    zzhamVar.add((String) obj);
                }
            }
            return;
        }
        if (!(iterable instanceof zzhbm)) {
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(iterable.size() + list.size());
            }
            int size4 = list.size();
            for (Object obj2 : iterable) {
                if (obj2 == null) {
                    int size5 = list.size() - size4;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(new ObfuscatedString(new long[]{-3173409539996828810L, 1823831072305587019L, -8310865183495229410L, 7331359738991460609L}).toString());
                    sb2.append(size5);
                    String m3332x9d12c1f42 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2527644153507361079L, -4548892932479993999L, -1641551443173028097L}), sb2);
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
        list.addAll(iterable);
    }

    public int zzat(zzhby zzhbyVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzhbe
    public final zzgyl zzau() {
        try {
            int zzaz = zzaz();
            zzgyl zzgylVar = zzgyl.zzb;
            byte[] bArr = new byte[zzaz];
            zzgza zzB = zzgza.zzB(bArr, 0, zzaz);
            zzaW(zzB);
            zzB.zzC();
            return new zzgyh(bArr);
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{5471434903717386097L, -3192610591779249919L, 2114552164632662129L}).toString());
            sb.append(name);
            throw new RuntimeException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8362816429572099562L, -6495932008353594420L, 7246760314669577344L, 2634285449477647204L, 1014731930794796787L, 3211247084192058140L, 6616978664143564907L, 4061903662652455798L, 7735140697929215465L}), sb), e);
        }
    }

    public final void zzaw(OutputStream outputStream) {
        int zzaz = zzaz();
        int i = zzgza.zzf;
        if (zzaz > 4096) {
            zzaz = 4096;
        }
        zzgyy zzgyyVar = new zzgyy(outputStream, zzaz);
        zzaW(zzgyyVar);
        zzgyyVar.zzH();
    }

    public final byte[] zzax() {
        try {
            int zzaz = zzaz();
            byte[] bArr = new byte[zzaz];
            zzgza zzB = zzgza.zzB(bArr, 0, zzaz);
            zzaW(zzB);
            zzB.zzC();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-8435857953182648540L, -7440062980951257894L, -32331034812550611L}).toString());
            sb.append(name);
            throw new RuntimeException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5569613912204541749L, -5064900054365730537L, 1947640746651209124L, 6109483994529237925L, -1536901107361769870L, -5644294128462926553L, -8588119689530259750L, 7543134715229929756L, 505523130005853968L}), sb), e);
        }
    }
}
