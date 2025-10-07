package defpackage;

import android.graphics.Rect;
import android.util.Size;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.internal.compat.workaround.SurfaceSorter;
import androidx.camera.video.VideoCapture;
import java.util.Comparator;
import kotlin.jvm.functions.Function1;

/* renamed from: 둘듟돰땃땠땳땹땅돛도둬딀돷돸뎬듌돝됩돼딠돶돼땮돠뎸둘될땋들됴땭돝딹듬뒾두땸돤듻딞돸돝땟땜되듐둥뒉두땳딁뒋듐듽딽듸뎸땹듰땩땅뒀땪돤됫뎠돳돶땔딄뒬뎡뒐딨땣딀딨땳땰땥되뒈디뎠딁뒻땍됨돵땡뒈땟둡뒾땁뒉딁뒛뎻뎸뒘딁될둡딠딽땬땰됩뒋땭땣뒙땦딀딌땲딨땅딜듸뒻땜뎰뎬땀땨딝돛돴, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0612xe466f64 implements Comparator {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4370xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f4371x3271d0aa;

    public /* synthetic */ C0612xe466f64(Object obj, int i) {
        this.f4370xfbe0c504 = i;
        this.f4371x3271d0aa = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$adjustCropRectToValidSize$4;
        switch (this.f4370xfbe0c504) {
            case 0:
                for (Function1 function1 : (Function1[]) this.f4371x3271d0aa) {
                    int compareValues = AbstractC0613x9f5dff2a.compareValues((Comparable) function1.invoke(obj), (Comparable) function1.invoke(obj2));
                    if (compareValues != 0) {
                        return compareValues;
                    }
                }
                return 0;
            case 1:
                return SurfaceSorter.m294xfbe0c504((SurfaceSorter) this.f4371x3271d0aa, (SessionConfig.OutputConfig) obj, (SessionConfig.OutputConfig) obj2);
            default:
                lambda$adjustCropRectToValidSize$4 = VideoCapture.lambda$adjustCropRectToValidSize$4((Rect) this.f4371x3271d0aa, (Size) obj, (Size) obj2);
                return lambda$adjustCropRectToValidSize$4;
        }
    }
}
