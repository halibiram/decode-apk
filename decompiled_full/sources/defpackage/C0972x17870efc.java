package defpackage;

import com.google.android.material.color.utilities.DynamicColor;
import com.google.android.material.color.utilities.DynamicScheme;
import com.google.android.material.color.utilities.MaterialDynamicColors;
import com.google.android.material.color.utilities.ToneDeltaPair;
import j$.util.function.Function$CC;
import java.util.function.Function;

/* renamed from: 딜딟뒹딞둡땬딨땩땵땐딌둥둬뒨땪뒉땳뒾됫땃땬딄둑듰딝듌딨뒈뎠딽땠듸땰땮됐딅땐뒙뒨뎠땁딜따딁땣된땪땁돴듨돛땧뒷돵뎰뒾땥딠땭딅뒤돰듟뎹됴뒋딻딎딞땳땮땬뒀땅땀땝땰뒉뒉듟될돰둬딟땰뎻뒐디듐딨딟뎠딟뒾땡돶들땯딄둘땐뒷득두뒨돠돰돷듼듔땫듟뎰딄뒵됨돷땮땤된될뒨뒐땀딝둡뎸든딽듸, reason: contains not printable characters */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0972x17870efc implements Function {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5146xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ MaterialDynamicColors f5147x3271d0aa;

    public /* synthetic */ C0972x17870efc(MaterialDynamicColors materialDynamicColors, int i) {
        this.f5146xfbe0c504 = i;
        this.f5147x3271d0aa = materialDynamicColors;
    }

    public final /* synthetic */ Function andThen(Function function) {
        int i = this.f5146xfbe0c504;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        DynamicColor lambda$onPrimaryFixedVariant$116;
        ToneDeltaPair lambda$tertiaryFixedDim$136;
        DynamicColor lambda$onTertiary$84;
        DynamicColor lambda$onError$96;
        Double lambda$onPrimaryContainer$62;
        DynamicColor lambda$onPrimaryContainer$63;
        ToneDeltaPair lambda$secondaryFixedDim$122;
        ToneDeltaPair lambda$primaryFixed$105;
        ToneDeltaPair lambda$primaryFixedDim$108;
        ToneDeltaPair lambda$tertiaryContainer$87;
        switch (this.f5146xfbe0c504) {
            case 0:
                lambda$onPrimaryFixedVariant$116 = this.f5147x3271d0aa.lambda$onPrimaryFixedVariant$116((DynamicScheme) obj);
                return lambda$onPrimaryFixedVariant$116;
            case 1:
                lambda$tertiaryFixedDim$136 = this.f5147x3271d0aa.lambda$tertiaryFixedDim$136((DynamicScheme) obj);
                return lambda$tertiaryFixedDim$136;
            case 2:
                lambda$onTertiary$84 = this.f5147x3271d0aa.lambda$onTertiary$84((DynamicScheme) obj);
                return lambda$onTertiary$84;
            case 3:
                lambda$onError$96 = this.f5147x3271d0aa.lambda$onError$96((DynamicScheme) obj);
                return lambda$onError$96;
            case 4:
                lambda$onPrimaryContainer$62 = this.f5147x3271d0aa.lambda$onPrimaryContainer$62((DynamicScheme) obj);
                return lambda$onPrimaryContainer$62;
            case 5:
                lambda$onPrimaryContainer$63 = this.f5147x3271d0aa.lambda$onPrimaryContainer$63((DynamicScheme) obj);
                return lambda$onPrimaryContainer$63;
            case 6:
                lambda$secondaryFixedDim$122 = this.f5147x3271d0aa.lambda$secondaryFixedDim$122((DynamicScheme) obj);
                return lambda$secondaryFixedDim$122;
            case 7:
                lambda$primaryFixed$105 = this.f5147x3271d0aa.lambda$primaryFixed$105((DynamicScheme) obj);
                return lambda$primaryFixed$105;
            case 8:
                lambda$primaryFixedDim$108 = this.f5147x3271d0aa.lambda$primaryFixedDim$108((DynamicScheme) obj);
                return lambda$primaryFixedDim$108;
            case 9:
                lambda$tertiaryContainer$87 = this.f5147x3271d0aa.lambda$tertiaryContainer$87((DynamicScheme) obj);
                return lambda$tertiaryContainer$87;
            default:
                return this.f5147x3271d0aa.highestSurface((DynamicScheme) obj);
        }
    }

    public final /* synthetic */ Function compose(Function function) {
        int i = this.f5146xfbe0c504;
        return Function$CC.$default$compose(this, function);
    }
}
