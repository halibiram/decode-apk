package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.DesugarCollections;
import java.io.File;
import java.text.DecimalFormat;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzchz extends zzchw {
    public static final /* synthetic */ int zzd = 0;
    private static final Set zze = DesugarCollections.synchronizedSet(new HashSet());
    private static final DecimalFormat zzf = new DecimalFormat(new ObfuscatedString(new long[]{-5698191964401081320L, -6520780667105974623L}).toString());
    private File zzg;
    private boolean zzh;

    public zzchz(zzcgl zzcglVar) {
        super(zzcglVar);
        File cacheDir = this.zza.getCacheDir();
        if (cacheDir == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{-3050954835047834641L, 930379007322036017L, 6650989348148325717L, 7410863922299860890L, 8745887139354854134L, 889593555565227199L}).toString());
            return;
        }
        File file = new File(cacheDir, new ObfuscatedString(new long[]{-4267468655459211021L, -446205591816817774L, 5711414968310248102L, -1813800285765179103L}).toString());
        this.zzg = file;
        if (!file.isDirectory() && !this.zzg.mkdirs()) {
            AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{-7125660024256502106L, 6220099087310695616L, 6356736675105533161L, 7379669773927495029L, -8886097438699970031L, 2833644947836230163L, -790768458441706903L}), String.valueOf(this.zzg.getAbsolutePath()));
            this.zzg = null;
        } else {
            if (this.zzg.setReadable(true, false) && this.zzg.setExecutable(true, false)) {
                return;
            }
            AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{4718419962221678909L, 4188034471093203469L, 5819360792922589228L, 4847770394288703767L, 5152420210809048901L, -6902100401138374533L}), String.valueOf(this.zzg.getAbsolutePath()));
            this.zzg = null;
        }
    }

    private final File zza(File file) {
        return new File(this.zzg, String.valueOf(file.getName()).concat(new ObfuscatedString(new long[]{3853337525696854733L, 3718552742893176740L}).toString()));
    }

    @Override // com.google.android.gms.internal.ads.zzchw
    public final void zzf() {
        this.zzh = true;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:352:0x06ae
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v28 */
    @Override // com.google.android.gms.internal.ads.zzchw
    public final boolean zzt(final java.lang.String r32) {
        /*
            Method dump skipped, instructions count: 2454
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzchz.zzt(java.lang.String):boolean");
    }
}
