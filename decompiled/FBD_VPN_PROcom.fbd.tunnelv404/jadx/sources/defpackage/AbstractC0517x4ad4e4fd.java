package defpackage;

import androidx.camera.camera2.internal.compat.quirk.CaptureIntentPreviewQuirk;
import androidx.camera.core.impl.Quirks;
import java.util.Iterator;

/* renamed from: 돷됩뒝땔땬될득땦땄돤됩땅돰뒝뒐뒾뎬딤뒼딁듌둬됩뎹도든뒝돵딎듸뎰도땻뒤듼땦땀땟딤돳뒋듼딞땮땳딟듐든득딤딻뒤땦도듐듐땰듻땐됴됴뒼땔디땭딃땻뎸뎠딄들뒈뒉뎬뒹뒝땻땄뒋따돶됨됴뒤뒋됨뒨뒀듼딜딀두딌돝듌딹따뒋뎽돵돤돵뒹들되돰딟돰땵땡뒬뒙뎸딟땥득뎬뒬땬든듼땪돷듟듔딄딨땬딠뎻, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0517x4ad4e4fd {
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static boolean m3155xfbe0c504(CaptureIntentPreviewQuirk captureIntentPreviewQuirk) {
        return true;
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static boolean m3156x3271d0aa(Quirks quirks) {
        Iterator it = quirks.getAll(CaptureIntentPreviewQuirk.class).iterator();
        while (it.hasNext()) {
            if (((CaptureIntentPreviewQuirk) it.next()).workaroundByCaptureIntentPreview()) {
                return true;
            }
        }
        return false;
    }
}
