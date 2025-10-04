package defpackage;

import com.google.common.base.Supplier;
import com.google.common.util.concurrent.Striped;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* renamed from: 땦땐딟둑땯딁땮돠딽되됴딜뒾딅됴뎰든돠둔딀땍돨뒨돴땍딞둣땲드땁돠듬뒝뒼땸돸둥땩땧됐돳둥땹돰뒙땩뎽땅딄땳돠땄드땧땯돵땮땮뒵둠땡뒬돳딄돴딅돰듔뒤듼됴땬돰땋땃돸돠든듸듟돵뒨땤땄딁도땱딸땁두듽됴뒋뒹땸땫뎡돷듸뒙땦돠딌딞둘듔뒘듬뒾땡둔뎠돛들뒈됩둔듌뒨뒙둡땫됨땠땮뒉딎땲듽땀, reason: contains not printable characters */
/* loaded from: classes2.dex */
public final /* synthetic */ class C1202xe9fe149b implements Supplier {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5596xfbe0c504;

    public /* synthetic */ C1202xe9fe149b(int i) {
        this.f5596xfbe0c504 = i;
    }

    @Override // com.google.common.base.Supplier
    public final Object get() {
        switch (this.f5596xfbe0c504) {
            case 0:
                return Striped.m1296x3271d0aa();
            default:
                return new ReentrantReadWriteLock();
        }
    }
}
