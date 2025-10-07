package defpackage;

import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;

/* renamed from: 듸뒋땲듼될딀딻듨됴딄땧듽딠둬됴땯돶땣둡땫뎽뒨됩둥될땰뒉뒻듨둬땋뎽된돷듰땃듼뎻뎨땃됴땍뒾듬듔딄돠도디됐뒋딎땐뎡땸돳딜땣뒬돠됩둣둬듨돤딝둘돰땹두땁듸뒻될둬딞됐뎻뒋땦딃듔땧뒛뒀둔딽돰득돷둣땵땄뎨뒛뎸뎽땠듟땫땁땬땡딃뎡땝듼딠듰땜딐땮두뒉된딽딁뒨돳돝땠됴돝딀땧땣뒼들땦뒉, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0863x4676ef50 extends AbstractC0858xcdf2cedb {

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public boolean f4970x75d576dc;

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f4956x3271d0aa) {
            return;
        }
        if (!this.f4970x75d576dc) {
            m3431xfbe0c504();
        }
        this.f4956x3271d0aa = true;
    }

    @Override // defpackage.AbstractC0858xcdf2cedb, okio.Source
    public final long read(Buffer sink, long j) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j >= 0) {
            if (!this.f4956x3271d0aa) {
                if (this.f4970x75d576dc) {
                    return -1L;
                }
                long read = super.read(sink, j);
                if (read == -1) {
                    this.f4970x75d576dc = true;
                    m3431xfbe0c504();
                    return -1L;
                }
                return read;
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3337xab142723("byteCount < 0: ", j).toString());
    }
}
