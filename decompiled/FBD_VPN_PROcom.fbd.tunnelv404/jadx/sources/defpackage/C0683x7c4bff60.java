package defpackage;

import java.util.HashSet;
import java.util.Iterator;
import kotlin.collections.AbstractIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 뒐둬둬둥뒋땮뎻뎬뒙딃뎻됩뒋득땯돛땨땧뒋됨땲뎨딸땃땔디뎽듔뎡득뒝뎬땅디딀둔딤돰뒤땭듐땔딹딸딃뒋땧듟땬딽되뒋뎬땁돸딟뒾뒹땐뒹땣됐뒵딁땠듬땯듐딤딅땐땁둘땄땡땥땥돵뎹뒘듨땟뒋땋뎽땥땔뎡뒨듸땄땭뒐뒐디딅뒐땄될따뒬땫뎰됴뒬돴딹둣딽땲뒝됴뒨뒷된땣뒤딁도땡뒻땡뒈뒘뎰도뒾땥뒋딻, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0683x7c4bff60 extends AbstractIterator {

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Iterator f4519x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final Function1 f4520x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final HashSet f4521x9738a56c;

    public C0683x7c4bff60(Iterator source, Function1 keySelector) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(keySelector, "keySelector");
        this.f4519x1378447b = source;
        this.f4520x75d576dc = keySelector;
        this.f4521x9738a56c = new HashSet();
    }

    @Override // kotlin.collections.AbstractIterator
    public final void computeNext() {
        Object next;
        do {
            Iterator it = this.f4519x1378447b;
            if (it.hasNext()) {
                next = it.next();
            } else {
                done();
                return;
            }
        } while (!this.f4521x9738a56c.add(this.f4520x75d576dc.invoke(next)));
        setNext(next);
    }
}
