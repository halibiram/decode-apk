package com.google.android.gms.internal.ads;

import android.app.PendingIntent;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import com.panda912.muddy.ObfuscatedString;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzfuj {
    public static final int zza;
    public static final ClipData zzb;

    static {
        int i;
        if (Build.VERSION.SDK_INT > 22) {
            i = AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL;
        } else {
            i = 0;
        }
        zza = i;
        zzb = ClipData.newIntent(new ObfuscatedString(new long[]{-4382261968846505313L}).toString(), new Intent());
    }

    @Nullable
    public static PendingIntent zza(Context context, int i, Intent intent, int i2) {
        return PendingIntent.getActivity(context, 0, zzc(intent, 201326592, 0), 201326592);
    }

    @Nullable
    public static PendingIntent zzb(Context context, int i, Intent intent, int i2, int i3) {
        return PendingIntent.getService(context, 0, zzc(intent, i2, 0), i2);
    }

    private static Intent zzc(Intent intent, int i, int i2) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        if ((i & 88) == 0) {
            z = true;
        } else {
            z = false;
        }
        zzfxe.zzf(z, new ObfuscatedString(new long[]{5476018359118247491L, 3197048063781005005L, 4950427226770263268L, -8476185834368576127L, 5734775315935555365L, 3262365283149607867L, -1923102978824191531L, -4649850816915981683L}).toString());
        if ((i & 1) == 0 || zzd(0, 3)) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzfxe.zzf(z2, new ObfuscatedString(new long[]{-8909868304501433761L, -8218825920218309374L, -6256695199525676267L, 7359836328466820898L, 7800636253873939028L, 6023627190529544011L, 6078983515642567417L, 1125175893375900365L, 4944860201055774929L, 63325854389161270L}).toString());
        if ((i & 2) == 0 || zzd(0, 5)) {
            z3 = true;
        } else {
            z3 = false;
        }
        zzfxe.zzf(z3, new ObfuscatedString(new long[]{-6953474417440210030L, -6486610340955809895L, -1531212820500460562L, -8017343859474719766L, 8748777098821030851L, 4147534691118183446L, -5804796582689492737L, -8941850406339370945L, 5307528269417525339L, -3719828819658404494L}).toString());
        if ((i & 4) == 0 || zzd(0, 9)) {
            z4 = true;
        } else {
            z4 = false;
        }
        zzfxe.zzf(z4, new ObfuscatedString(new long[]{-1714780966425579198L, -7196322089853544016L, -1659473625796187676L, -8074787712618267470L, -2637229911641100525L, 5781183540835723463L, 468105987757217957L, 4417269887776984732L, 1629605803473463304L, -1356406266001672190L, -8792438546787704301L}).toString());
        if ((i & 128) == 0 || zzd(0, 17)) {
            z5 = true;
        } else {
            z5 = false;
        }
        zzfxe.zzf(z5, new ObfuscatedString(new long[]{3743649867255436778L, 2004337353906544567L, 5693555210808347562L, 4974265228504050896L, 7432639023401248397L, 8620704842324525207L, -4060277694752655965L, -6032928693097614066L, -544442402722511905L, 4421169398699198878L, 7361730452638027515L}).toString());
        if (intent.getComponent() != null) {
            z6 = true;
        } else {
            z6 = false;
        }
        zzfxe.zzf(z6, new ObfuscatedString(new long[]{-232060921715387963L, -6194395203745875005L, 5692941241563603439L, 3713329906706515688L, 5481938481326655962L}).toString());
        if (zzd(0, 1)) {
            zzfxe.zzf(!zzd(i, AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL), new ObfuscatedString(new long[]{-6955901990709965646L, 5260973089681445231L, 3257315705120481985L, 5340069169756231849L, 5583310061262495610L, -199535675142589461L, -6764230999670206372L, 7616459891304546975L, 8602577730379109711L, -7502429356707203145L}).toString());
        } else {
            if (Build.VERSION.SDK_INT < 23 || zzd(i, AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL)) {
                z7 = true;
            } else {
                z7 = false;
            }
            zzfxe.zzf(z7, new ObfuscatedString(new long[]{-3654012049942365695L, -6004507208807107923L, -6498439124637352213L, 8550143024719946905L, 3085695881537215706L, -4025357448395162861L, 2745667630240087698L, 6975925551708774593L, 8127780389765080273L, -1470663710270478426L, 7384648458144026626L, -6901514964667737502L}).toString());
        }
        Intent intent2 = new Intent(intent);
        if (Build.VERSION.SDK_INT < 23 || !zzd(i, AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL)) {
            if (intent2.getPackage() == null) {
                intent2.setPackage(intent2.getComponent().getPackageName());
            }
            if (!zzd(0, 3) && intent2.getAction() == null) {
                intent2.setAction(new ObfuscatedString(new long[]{2067533977407180108L}).toString());
            }
            if (!zzd(0, 9) && intent2.getCategories() == null) {
                intent2.addCategory(new ObfuscatedString(new long[]{3608385602372418877L}).toString());
            }
            if (!zzd(0, 5) && intent2.getData() == null) {
                intent2.setDataAndType(Uri.EMPTY, new ObfuscatedString(new long[]{-2392538202444949083L, -8689351184532485223L}).toString());
            }
            if (!zzd(0, 17) && intent2.getClipData() == null) {
                intent2.setClipData(zzb);
            }
        }
        return intent2;
    }

    private static boolean zzd(int i, int i2) {
        return (i & i2) == i2;
    }
}
