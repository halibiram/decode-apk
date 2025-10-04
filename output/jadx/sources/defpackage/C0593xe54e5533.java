package defpackage;

import coil3.Extras;
import coil3.Image_androidKt;
import coil3.content.Context;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import kotlin.jvm.functions.Function1;

/* renamed from: 됴디뒙듽뎨땨돠땬듔땱뒉뒋둔딄땠딻딸듰땠땐딄뒛딄돰뒉땅딝땭딁돤듻뒐땝뒾듔듰땮뒀딜둡땐딌땫디땸뎬뎻땧드됫돷돶딐돳뒘뎸땩땭땳땯땟듔듔땬땍뒼돴땐땄땪됩돴돛둬도딸땰뒝땍둡땨듻땤땪뎸땹듰뒨땰딹듌땐듽됴됴돨됐둑듐뎬돼둔되땰땹뎸됩땍땥뒬뎨듟뒐딸듰딃딨뎡땱땳뒾드땐딁뒉땵땃됫뎽득, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0593xe54e5533 implements Function1 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4299xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ int f4300x3271d0aa;

    public /* synthetic */ C0593xe54e5533(int i, int i2) {
        this.f4299xfbe0c504 = i2;
        this.f4300x3271d0aa = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.f4300x3271d0aa;
        switch (this.f4299xfbe0c504) {
            case 0:
                ((Integer) obj).intValue();
                throw new IndexOutOfBoundsException("Collection doesn't contain element at index " + i + '.');
            case 1:
                Extras.Key key = ImageRequests_androidKt.f793xfbe0c504;
                return Image_androidKt.asImage(Context.getDrawableCompat(((ImageRequest) obj).getContext(), i));
            case 2:
                Extras.Key key2 = ImageRequests_androidKt.f793xfbe0c504;
                return Image_androidKt.asImage(Context.getDrawableCompat(((ImageRequest) obj).getContext(), i));
            case 3:
                Extras.Key key3 = ImageRequests_androidKt.f793xfbe0c504;
                return Image_androidKt.asImage(Context.getDrawableCompat(((ImageRequest) obj).getContext(), i));
            default:
                ((Integer) obj).intValue();
                throw new IndexOutOfBoundsException("Sequence doesn't contain element at index " + i + '.');
        }
    }
}
