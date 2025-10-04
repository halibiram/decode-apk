package kotlin.collections;

import defpackage.AbstractC0613x9f5dff2a;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Add missing generic type declarations: [T] */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
/* loaded from: classes3.dex */
public final class CollectionsKt__CollectionsKt$binarySearchBy$1<T> implements Function1<T, Integer> {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Function1 f1243xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Comparable f1244x3271d0aa;

    /* JADX WARN: Incorrect types in method signature: (Lkotlin/jvm/functions/Function1<-TT;+TK;>;TK;)V */
    public CollectionsKt__CollectionsKt$binarySearchBy$1(Function1 function1, Comparable comparable) {
        this.f1243xfbe0c504 = function1;
        this.f1244x3271d0aa = comparable;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function1
    public final Integer invoke(T t) {
        return Integer.valueOf(AbstractC0613x9f5dff2a.compareValues((Comparable) this.f1243xfbe0c504.invoke(t), this.f1244x3271d0aa));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Integer invoke(Object obj) {
        return invoke((CollectionsKt__CollectionsKt$binarySearchBy$1<T>) obj);
    }
}
