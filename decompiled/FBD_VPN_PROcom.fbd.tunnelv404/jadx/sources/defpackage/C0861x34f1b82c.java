package defpackage;

import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okio.Buffer;

/* renamed from: 듸돠도땭땲딜딝돷땜돳들뒀듼땸듌땪돰딐땅돛들뎠땤땠듽뒛들듰둣딌돤들땔든땵딃땭딟뎬땝뎻돨듟두뎰땸딽뒼돤둘땠듐됩듔돴뎰듻디뒋돵딄될땸도듐돨딟땋땳땜됨뒝땲땪돼땍듽돶뒉딝땮땵땭딞되듌두돶땅되듻둠둣둥땁땲둬돼땨둑땦뒛뎠딎돶뒬땀됫뎠땩딽땳딞땨뎠땣듰땳땹돵딨됐땫땄둣땣돛듬딁딃, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0861x34f1b82c extends AbstractC0858xcdf2cedb {

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public long f4965x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final /* synthetic */ Http1ExchangeCodec f4966x9738a56c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0861x34f1b82c(Http1ExchangeCodec http1ExchangeCodec, long j) {
        super(http1ExchangeCodec);
        this.f4966x9738a56c = http1ExchangeCodec;
        this.f4965x75d576dc = j;
        if (j == 0) {
            m3431xfbe0c504();
        }
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f4956x3271d0aa) {
            return;
        }
        if (this.f4965x75d576dc != 0 && !_UtilJvmKt.discard(this, 100, TimeUnit.MILLISECONDS)) {
            this.f4966x9738a56c.getCarrier().noNewExchanges();
            m3431xfbe0c504();
        }
        this.f4956x3271d0aa = true;
    }

    @Override // defpackage.AbstractC0858xcdf2cedb, okio.Source
    public final long read(Buffer sink, long j) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j >= 0) {
            if (!this.f4956x3271d0aa) {
                long j2 = this.f4965x75d576dc;
                if (j2 == 0) {
                    return -1L;
                }
                long read = super.read(sink, Math.min(j2, j));
                if (read != -1) {
                    long j3 = this.f4965x75d576dc - read;
                    this.f4965x75d576dc = j3;
                    if (j3 == 0) {
                        m3431xfbe0c504();
                    }
                    return read;
                }
                this.f4966x9738a56c.getCarrier().noNewExchanges();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                m3431xfbe0c504();
                throw protocolException;
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3337xab142723("byteCount < 0: ", j).toString());
    }
}
