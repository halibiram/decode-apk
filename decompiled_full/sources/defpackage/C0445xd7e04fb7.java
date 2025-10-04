package defpackage;

import okio.Buffer;
import okio.ForwardingSource;

/* renamed from: 돤뒋됫뒘땫뒐땰땰땟돝땲뎻땭뒤땫돝땻뎸딅딟땔돶듰듽뒼땄듰딝듰둣뎬됴딨뒛땐딹뒀땟딻듽땳땸딨도되땱디돷뒬듔두땅둬땄둬듰뎨뒵듐딟듔땧돠땲땳됫뒛듟땤돝들둘뒵돰딄돵뎡딀땜둠딨돤땣땯되땃땔딸딀땧된딹뒵딹돝둬듬뒾딁돴땔땰뎨들뒨땵듻뒼뒾딤딄돴돵땸돷뒙땅땍듸땻둔돸딟딟땰딄둔둔딨돝, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0445xd7e04fb7 extends ForwardingSource {

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public Exception f3893x3271d0aa;

    @Override // okio.ForwardingSource, okio.Source
    public final long read(Buffer buffer, long j) {
        try {
            return super.read(buffer, j);
        } catch (Exception e) {
            this.f3893x3271d0aa = e;
            throw e;
        }
    }
}
