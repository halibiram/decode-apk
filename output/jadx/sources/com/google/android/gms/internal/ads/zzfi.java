package com.google.android.gms.internal.ads;

import android.media.MediaFormat;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.nio.ByteBuffer;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzfi {
    public static void zza(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    public static void zzb(MediaFormat mediaFormat, List list) {
        for (int i = 0; i < list.size(); i++) {
            mediaFormat.setByteBuffer(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-1213930384920567287L, 8716902787609591177L}), new StringBuilder(), i), ByteBuffer.wrap((byte[]) list.get(i)));
        }
    }
}
