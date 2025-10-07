package defpackage;

import androidx.camera.core.impl.Quirks;
import androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk;
import java.util.Iterator;

/* renamed from: 땨둘듟뒵돶땬땀듰돸뒻딜뒵땰뎬뒘뒈뒼디땝돛땭땳딤땟든딀뎻뒘딎땬돰땃땯뒛땦뒤돨됨딁돛땬돸땭딻땪뎨된뒋돝듽돨됩딄된땭땔뒙딠뒵듽뒵됴딞땝됫뒘된딞듽들둡땲된딻뒻듨땩땱디뎽돷드딟딽땁뒷도땹돠돸듰딌땟땔땭돛땨뒼돤돸딞땝딐딁둡득뎨땧땟듨둠듌돵딠둡된득땐뒨돳듌뎡뒤뎡둬딤땝땫뎽땡, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC1214x8a7878a2 {
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static boolean m3958xfbe0c504(SurfaceProcessingQuirk surfaceProcessingQuirk) {
        return true;
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static boolean m3959x3271d0aa(Quirks quirks) {
        Iterator it = quirks.getAll(SurfaceProcessingQuirk.class).iterator();
        while (it.hasNext()) {
            if (((SurfaceProcessingQuirk) it.next()).workaroundBySurfaceProcessing()) {
                return true;
            }
        }
        return false;
    }
}
