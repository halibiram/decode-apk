package defpackage;

import j$.util.AbstractC1344b;
import j$.util.Comparator;
import java.util.Comparator;
import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 딠두듼딀돨땄뎸돼뎸뒨딁됨딟뎸땤든땹딌땨땯됴됩뒬됫땹듼뎠뎨듸돶땃듼돛땯땳땨듟땦뎻돴뒬땳딟뒻뒾듬돳땻딨뒤뒬뒻뒛딽땩뒤둡듨땄땄듽땫따땸땬되됨따땵됨딤땵돼땠됴땯듟듌둣땹땧드땟땵땲디뎡돶딄듟뒬딽뒤돴된돤됫딠땭돤듽뒝둘땁된땯땵딽디됐땵땄땧든딎듔뒈뒹딻듟뒈됫땩딁돠뒝땅돶뎹듻, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0996x24910731 implements Comparator, j$.util.Comparator {

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final C0996x24910731 f5180x3271d0aa = new C0996x24910731(0);

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final C0996x24910731 f5181x1378447b = new C0996x24910731(1);

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5182xfbe0c504;

    public /* synthetic */ C0996x24910731(int i) {
        this.f5182xfbe0c504 = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f5182xfbe0c504) {
            case 0:
                Comparable a = (Comparable) obj;
                Comparable b = (Comparable) obj2;
                Intrinsics.checkNotNullParameter(a, "a");
                Intrinsics.checkNotNullParameter(b, "b");
                return a.compareTo(b);
            default:
                Comparable a2 = (Comparable) obj;
                Comparable b2 = (Comparable) obj2;
                Intrinsics.checkNotNullParameter(a2, "a");
                Intrinsics.checkNotNullParameter(b2, "b");
                return b2.compareTo(a2);
        }
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final Comparator reversed() {
        switch (this.f5182xfbe0c504) {
            case 0:
                return f5181x1378447b;
            default:
                return f5180x3271d0aa;
        }
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final /* synthetic */ Comparator thenComparing(Comparator comparator) {
        int i = this.f5182xfbe0c504;
        return Comparator.CC.$default$thenComparing(this, comparator);
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final /* synthetic */ java.util.Comparator thenComparingDouble(ToDoubleFunction toDoubleFunction) {
        int i = this.f5182xfbe0c504;
        return Comparator.CC.$default$thenComparingDouble(this, toDoubleFunction);
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final /* synthetic */ java.util.Comparator thenComparingInt(ToIntFunction toIntFunction) {
        int i = this.f5182xfbe0c504;
        return Comparator.CC.$default$thenComparingInt(this, toIntFunction);
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final /* synthetic */ java.util.Comparator thenComparingLong(ToLongFunction toLongFunction) {
        int i = this.f5182xfbe0c504;
        return Comparator.CC.$default$thenComparingLong(this, toLongFunction);
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final /* synthetic */ java.util.Comparator thenComparing(Function function) {
        int i = this.f5182xfbe0c504;
        return Comparator.CC.$default$thenComparing(this, function);
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final /* synthetic */ java.util.Comparator thenComparing(Function function, java.util.Comparator comparator) {
        java.util.Comparator z;
        int i = this.f5182xfbe0c504;
        z = AbstractC1344b.z(this, Comparator.CC.comparing(function, comparator));
        return z;
    }
}
