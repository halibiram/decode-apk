package defpackage;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* renamed from: 땯땋둠들둘땋딤딝뎰디도딁땐돼듐뎹돶딨땄뒝땬땵돨듼땵뒙뒹딎듌딸딅딨딝뎻땅돳뎹든뒾뒛됩땋득뒈땥돴뒾돳돛땀뎠돸뒀뎠도듌딅뒈돳땟뎡돸땣땅뒈돨딸돨듐듽뒛뎡듰두땤둡들딸뎹딁딽뒉땬뒷딸뒀땥뒙땱돝땟땯뎹땬뒵됨뎡뒹딐뒋둑땔뒘디딽돼돠딝땋뒨뎻뒉된됐땰땳뒬땯뎬땱돠딞딟땦뒀뎹뎠돠뒻땟, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1271xfff359ab implements CoroutineContext.Element, CoroutineContext.Key {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final C1271xfff359ab f5690xfbe0c504 = new Object();

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return CoroutineContext.Element.DefaultImpls.fold(this, obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.minusKey(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.plus(this, coroutineContext);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return this;
    }
}
