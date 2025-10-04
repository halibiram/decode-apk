package defpackage;

import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.DisposableHandle;

/* renamed from: 돠둥돴듨땧땄뒐뒐드땨뒨땲둣들뒾땱뒹땱듌들땍뒷뒐둑둑뒉딻딨땥딨땥뎠돴둣땥듟딟듽땭딐땯듽딻됫듟뒨뒨둬땮뎹된땦땻둑둠두땤둥땪땮둠뎻뒼뎻땃뒷듼듨딌뒼땠듬둥딁딌둥둬딸듨득뒵되땲딽돛땹도땪땲돷딃뒈듻땟뒀둑돶돝뒛듐돸따딀둣땪땠듌돷돤땡뒉됨뒾둘땱땨뎸뎬땫땜뎠둣둑듨딻돷땜땱됴둥, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0436xdc381bd6 implements CancelHandler {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final C0435xdda04007[] f3881xfbe0c504;

    public C0436xdc381bd6(C0435xdda04007[] c0435xdda04007Arr) {
        this.f3881xfbe0c504 = c0435xdda04007Arr;
    }

    @Override // kotlinx.coroutines.CancelHandler
    public final void invoke(Throwable th) {
        m3083xfbe0c504();
    }

    public final String toString() {
        return "DisposeHandlersOnCancel[" + this.f3881xfbe0c504 + ']';
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final void m3083xfbe0c504() {
        for (C0435xdda04007 c0435xdda04007 : this.f3881xfbe0c504) {
            DisposableHandle disposableHandle = c0435xdda04007.f3879x9738a56c;
            if (disposableHandle == null) {
                disposableHandle = null;
            }
            disposableHandle.dispose();
        }
    }
}
