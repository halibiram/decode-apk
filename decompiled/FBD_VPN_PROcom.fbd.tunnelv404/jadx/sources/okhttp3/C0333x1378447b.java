package okhttp3;

import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Typography;
import okhttp3.Headers;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.internal.http.StatusLine;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Source;

/* renamed from: okhttp3.뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0333x1378447b {

    /* renamed from: 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠, reason: contains not printable characters */
    public static final String f3535x1db10c9d;

    /* renamed from: 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻, reason: contains not printable characters */
    public static final String f3536xd2bcb0cf;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final HttpUrl f3537xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Headers f3538x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final String f3539x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final Protocol f3540x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final int f3541x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final String f3542x9e171bf9;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public final Headers f3543x34271fae;

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public final Handshake f3544x95f25580;

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
    public final long f3545x3db60231;

    /* renamed from: 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎, reason: contains not printable characters */
    public final long f3546x9d12c1f4;

    static {
        final DefaultConstructorMarker defaultConstructorMarker = null;
        new Object(defaultConstructorMarker) { // from class: okhttp3.Cache$Entry$Companion
        };
        StringBuilder sb = new StringBuilder();
        Platform.Companion companion = Platform.INSTANCE;
        sb.append(companion.get().getPrefix());
        sb.append("-Sent-Millis");
        f3535x1db10c9d = sb.toString();
        f3536xd2bcb0cf = companion.get().getPrefix() + "-Received-Millis";
    }

    public C0333x1378447b(Source rawSource) {
        TlsVersion tlsVersion;
        Intrinsics.checkNotNullParameter(rawSource, "rawSource");
        try {
            BufferedSource buffer = Okio.buffer(rawSource);
            String readUtf8LineStrict = buffer.readUtf8LineStrict();
            HttpUrl parse = HttpUrl.INSTANCE.parse(readUtf8LineStrict);
            if (parse != null) {
                this.f3537xfbe0c504 = parse;
                this.f3539x1378447b = buffer.readUtf8LineStrict();
                Headers.Builder builder = new Headers.Builder();
                int readInt$okhttp = Cache.INSTANCE.readInt$okhttp(buffer);
                for (int i = 0; i < readInt$okhttp; i++) {
                    builder.addLenient$okhttp(buffer.readUtf8LineStrict());
                }
                this.f3538x3271d0aa = builder.build();
                StatusLine parse2 = StatusLine.INSTANCE.parse(buffer.readUtf8LineStrict());
                this.f3540x75d576dc = parse2.protocol;
                this.f3541x9738a56c = parse2.code;
                this.f3542x9e171bf9 = parse2.message;
                Headers.Builder builder2 = new Headers.Builder();
                int readInt$okhttp2 = Cache.INSTANCE.readInt$okhttp(buffer);
                for (int i2 = 0; i2 < readInt$okhttp2; i2++) {
                    builder2.addLenient$okhttp(buffer.readUtf8LineStrict());
                }
                String str = f3535x1db10c9d;
                String str2 = builder2.get(str);
                String str3 = f3536xd2bcb0cf;
                String str4 = builder2.get(str3);
                builder2.removeAll(str);
                builder2.removeAll(str3);
                this.f3545x3db60231 = str2 != null ? Long.parseLong(str2) : 0L;
                this.f3546x9d12c1f4 = str4 != null ? Long.parseLong(str4) : 0L;
                this.f3543x34271fae = builder2.build();
                if (this.f3537xfbe0c504.isHttps()) {
                    String readUtf8LineStrict2 = buffer.readUtf8LineStrict();
                    if (readUtf8LineStrict2.length() <= 0) {
                        CipherSuite forJavaName = CipherSuite.INSTANCE.forJavaName(buffer.readUtf8LineStrict());
                        List<? extends Certificate> m2632xfbe0c504 = m2632xfbe0c504(buffer);
                        List<? extends Certificate> m2632xfbe0c5042 = m2632xfbe0c504(buffer);
                        if (!buffer.exhausted()) {
                            tlsVersion = TlsVersion.INSTANCE.forJavaName(buffer.readUtf8LineStrict());
                        } else {
                            tlsVersion = TlsVersion.SSL_3_0;
                        }
                        this.f3544x95f25580 = Handshake.INSTANCE.get(tlsVersion, forJavaName, m2632xfbe0c504, m2632xfbe0c5042);
                    } else {
                        throw new IOException("expected \"\" but was \"" + readUtf8LineStrict2 + Typography.quote);
                    }
                } else {
                    this.f3544x95f25580 = null;
                }
                CloseableKt.closeFinally(rawSource, null);
                return;
            }
            IOException iOException = new IOException("Cache corruption for " + readUtf8LineStrict);
            Platform.INSTANCE.get().log("cache corruption", 5, iOException);
            throw iOException;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(rawSource, th);
                throw th2;
            }
        }
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static List m2632xfbe0c504(BufferedSource bufferedSource) {
        int readInt$okhttp = Cache.INSTANCE.readInt$okhttp(bufferedSource);
        if (readInt$okhttp == -1) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            ArrayList arrayList = new ArrayList(readInt$okhttp);
            for (int i = 0; i < readInt$okhttp; i++) {
                String readUtf8LineStrict = bufferedSource.readUtf8LineStrict();
                Buffer buffer = new Buffer();
                ByteString decodeBase64 = ByteString.INSTANCE.decodeBase64(readUtf8LineStrict);
                if (decodeBase64 != null) {
                    buffer.write(decodeBase64);
                    arrayList.add(certificateFactory.generateCertificate(buffer.inputStream()));
                } else {
                    throw new IOException("Corrupt certificate in cache entry");
                }
            }
            return arrayList;
        } catch (CertificateException e) {
            throw new IOException(e.getMessage());
        }
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static void m2633x3271d0aa(BufferedSink bufferedSink, List list) {
        try {
            bufferedSink.writeDecimalLong(list.size()).writeByte(10);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                byte[] encoded = ((Certificate) it.next()).getEncoded();
                ByteString.Companion companion = ByteString.INSTANCE;
                Intrinsics.checkNotNull(encoded);
                bufferedSink.writeUtf8(ByteString.Companion.of$default(companion, encoded, 0, 0, 3, null).base64()).writeByte(10);
            }
        } catch (CertificateEncodingException e) {
            throw new IOException(e.getMessage());
        }
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final void m2634x1378447b(DiskLruCache.Editor editor) {
        HttpUrl httpUrl = this.f3537xfbe0c504;
        Handshake handshake = this.f3544x95f25580;
        Headers headers = this.f3543x34271fae;
        Headers headers2 = this.f3538x3271d0aa;
        Intrinsics.checkNotNullParameter(editor, "editor");
        BufferedSink buffer = Okio.buffer(editor.newSink(0));
        try {
            buffer.writeUtf8(httpUrl.toString()).writeByte(10);
            buffer.writeUtf8(this.f3539x1378447b).writeByte(10);
            buffer.writeDecimalLong(headers2.size()).writeByte(10);
            int size = headers2.size();
            for (int i = 0; i < size; i++) {
                buffer.writeUtf8(headers2.name(i)).writeUtf8(": ").writeUtf8(headers2.value(i)).writeByte(10);
            }
            buffer.writeUtf8(new StatusLine(this.f3540x75d576dc, this.f3541x9738a56c, this.f3542x9e171bf9).toString()).writeByte(10);
            buffer.writeDecimalLong(headers.size() + 2).writeByte(10);
            int size2 = headers.size();
            for (int i2 = 0; i2 < size2; i2++) {
                buffer.writeUtf8(headers.name(i2)).writeUtf8(": ").writeUtf8(headers.value(i2)).writeByte(10);
            }
            buffer.writeUtf8(f3535x1db10c9d).writeUtf8(": ").writeDecimalLong(this.f3545x3db60231).writeByte(10);
            buffer.writeUtf8(f3536xd2bcb0cf).writeUtf8(": ").writeDecimalLong(this.f3546x9d12c1f4).writeByte(10);
            if (httpUrl.isHttps()) {
                buffer.writeByte(10);
                Intrinsics.checkNotNull(handshake);
                buffer.writeUtf8(handshake.cipherSuite().javaName()).writeByte(10);
                m2633x3271d0aa(buffer, handshake.peerCertificates());
                m2633x3271d0aa(buffer, handshake.localCertificates());
                buffer.writeUtf8(handshake.tlsVersion().javaName()).writeByte(10);
            }
            CloseableKt.closeFinally(buffer, null);
        } finally {
        }
    }

    public C0333x1378447b(Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        this.f3537xfbe0c504 = response.request().url();
        this.f3538x3271d0aa = Cache.INSTANCE.varyHeaders(response);
        this.f3539x1378447b = response.request().method();
        this.f3540x75d576dc = response.protocol();
        this.f3541x9738a56c = response.code();
        this.f3542x9e171bf9 = response.message();
        this.f3543x34271fae = response.headers();
        this.f3544x95f25580 = response.handshake();
        this.f3545x3db60231 = response.sentRequestAtMillis();
        this.f3546x9d12c1f4 = response.receivedResponseAtMillis();
    }
}
