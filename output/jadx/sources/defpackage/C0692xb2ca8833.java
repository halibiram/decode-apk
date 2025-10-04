package defpackage;

import com.google.android.material.color.utilities.DynamicColor;
import com.google.android.material.color.utilities.DynamicScheme;
import com.google.android.material.color.utilities.Hct;
import com.google.android.material.color.utilities.TemperatureCache;
import com.google.android.material.color.utilities.TonalPalette;
import j$.util.function.Function$CC;
import java.util.function.Function;

/* renamed from: 뒘땐됐둔뒝듌땡딜뒝딌둬딠땻딁딐딽딻땦땋땲도뒨딌돼땱돝땵뒘돸땋둡뒈뎹듌뎹뒬듬뒉땦들딐땦딟땀디땪뒾됨도땍뒘듟둑둑됨땅돶땜땤둣땁돼뒉딠땰딐땨뒵듨드돼둠땫딞돶땡뒻땪듬돷땯뒬듌땜땩됨됩둔돳딻땯딅될듰딄둘딨돸둑됫뎨딞뒛땫돵뒬딽돼돼돴디땭딄딤뒷딽땄됩땁뎹될뎻돰땍두뎰뒤됨땅땅, reason: contains not printable characters */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0692xb2ca8833 implements Function {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4536xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f4537x3271d0aa;

    public /* synthetic */ C0692xb2ca8833(Object obj, int i) {
        this.f4536xfbe0c504 = i;
        this.f4537x3271d0aa = obj;
    }

    public final /* synthetic */ Function andThen(Function function) {
        int i = this.f4536xfbe0c504;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        TonalPalette lambda$fromArgb$0;
        Double lambda$fromArgb$1;
        switch (this.f4536xfbe0c504) {
            case 0:
                lambda$fromArgb$0 = DynamicColor.lambda$fromArgb$0((TonalPalette) this.f4537x3271d0aa, (DynamicScheme) obj);
                return lambda$fromArgb$0;
            case 1:
                lambda$fromArgb$1 = DynamicColor.lambda$fromArgb$1((Hct) this.f4537x3271d0aa, (DynamicScheme) obj);
                return lambda$fromArgb$1;
            default:
                return TemperatureCache.m1200xfbe0c504((TemperatureCache) this.f4537x3271d0aa, (Hct) obj);
        }
    }

    public final /* synthetic */ Function compose(Function function) {
        int i = this.f4536xfbe0c504;
        return Function$CC.$default$compose(this, function);
    }
}
