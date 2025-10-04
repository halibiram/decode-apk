package defpackage;

import android.app.Activity;
import android.content.Intent;
import androidx.window.embedding.EmbeddingAdapter;
import j$.util.function.Predicate$CC;
import java.util.Set;
import java.util.function.Predicate;

/* renamed from: 뒙됨딞땳딟땟땜뒬된땐땯땍뒻득뎬뒹뒐둥땔뒼됩딠땯됴따뒹딁딅뎨돴땳뎽돛땟돨땫뒨땯땰땻둠두됐되뒷딁뒤뒹뒐뎰땔도뒹땦돨듸듼됨듐딎돼됫득됐뎡도둡뒛땳됫땄딅땐뒀땐딨들땫뎸듬땲딄두딄딽딠딅뒼땸돛뎰딁됴디땧뒼듌뎻땭둣딄둠됩돷땮땲땸딤땵듻땐땪뎻돼듬뎨도땧땟땁땠땮땁뒬땤돶둔뒹땡땁, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0695x527ca70d implements Predicate {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4538xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Set f4539x3271d0aa;

    public /* synthetic */ C0695x527ca70d(Set set, int i) {
        this.f4538xfbe0c504 = i;
        this.f4539x3271d0aa = set;
    }

    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f4538xfbe0c504;
        return Predicate$CC.$default$and(this, predicate);
    }

    public final /* synthetic */ Predicate negate() {
        switch (this.f4538xfbe0c504) {
            case 0:
                return Predicate$CC.$default$negate(this);
            default:
                return Predicate$CC.$default$negate(this);
        }
    }

    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f4538xfbe0c504;
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f4538xfbe0c504) {
            case 0:
                return EmbeddingAdapter.m842x1378447b(this.f4539x3271d0aa, (Intent) obj);
            default:
                return EmbeddingAdapter.m841x3271d0aa((Activity) obj, this.f4539x3271d0aa);
        }
    }
}
