package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;

/* loaded from: classes2.dex */
final class zzmt extends zzmu {
    public zzmt(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.measurement.zzmu
    public final double zza(Object obj, long j) {
        return Double.longBitsToDouble(zzk(obj, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzmu
    public final float zzb(Object obj, long j) {
        return Float.intBitsToFloat(zzj(obj, j));
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InlineMethods
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to process method for inline: com.google.android.gms.internal.measurement.zzmv.zzi(java.lang.Object, long, boolean):void
        	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:74)
        	at jadx.core.dex.visitors.InlineMethods.visit(InlineMethods.java:49)
        Caused by: java.lang.ArrayIndexOutOfBoundsException: Index -1 out of bounds for length 2
        	at java.base/java.util.ArrayList.shiftTailOverGap(ArrayList.java:748)
        	at java.base/java.util.ArrayList.removeIf(ArrayList.java:1691)
        	at java.base/java.util.ArrayList.removeIf(ArrayList.java:1660)
        	at jadx.core.dex.instructions.args.SSAVar.removeUse(SSAVar.java:140)
        	at jadx.core.dex.instructions.args.SSAVar.use(SSAVar.java:133)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:489)
        	at jadx.core.dex.instructions.mods.TernaryInsn.rebindArgs(TernaryInsn.java:92)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:492)
        	at jadx.core.utils.BlockUtils.replaceInsn(BlockUtils.java:1109)
        	at jadx.core.utils.BlockUtils.replaceInsn(BlockUtils.java:1118)
        	at jadx.core.dex.visitors.InlineMethods.inlineMethod(InlineMethods.java:113)
        	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:72)
        	... 1 more
        */
    @Override // com.google.android.gms.internal.measurement.zzmu
    public final void zzc(java.lang.Object r2, long r3, boolean r5) {
        /*
            r1 = this;
            boolean r0 = com.google.android.gms.internal.measurement.zzmv.zzb
            if (r0 == 0) goto L8
            com.google.android.gms.internal.measurement.zzmv.zzi(r2, r3, r5)
            return
        L8:
            com.google.android.gms.internal.measurement.zzmv.zzj(r2, r3, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzmt.zzc(java.lang.Object, long, boolean):void");
    }

    @Override // com.google.android.gms.internal.measurement.zzmu
    public final void zzd(Object obj, long j, byte b) {
        if (zzmv.zzb) {
            zzmv.zzD(obj, j, b);
        } else {
            zzmv.zzE(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmu
    public final void zze(Object obj, long j, double d) {
        zzo(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.measurement.zzmu
    public final void zzf(Object obj, long j, float f) {
        zzn(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.measurement.zzmu
    public final boolean zzg(Object obj, long j) {
        if (zzmv.zzb) {
            return zzmv.zzt(obj, j);
        }
        return zzmv.zzu(obj, j);
    }
}
