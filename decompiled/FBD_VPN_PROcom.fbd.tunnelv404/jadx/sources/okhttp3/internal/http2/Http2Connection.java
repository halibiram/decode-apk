package okhttp3.internal.http2;

import defpackage.AbstractC0362x4440ab85;
import defpackage.C0635x2b917e10;
import defpackage.C0865xa10fe802;
import defpackage.C0866xf516eb97;
import defpackage.C0867x1dab7530;
import defpackage.C0868x3fdda1e2;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http2.FlowControlListener;
import okhttp3.internal.http2.Http2Reader;
import okhttp3.internal.http2.flowcontrol.WindowCounter;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 ¶\u00012\u00020\u0001:\b·\u0001¶\u0001¸\u0001¹\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\u000e\u0010\fJ\u0017\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0000¢\u0006\u0004\b\u0013\u0010\u0014J+\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00062\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ#\u0010\u001e\u001a\u00020\n2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001e\u0010\u001fJ-\u0010$\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001a2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017H\u0000¢\u0006\u0004\b\"\u0010#J/\u0010(\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001a2\b\u0010&\u001a\u0004\u0018\u00010%2\u0006\u0010'\u001a\u00020\u0010¢\u0006\u0004\b(\u0010)J\u001f\u0010.\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010+\u001a\u00020*H\u0000¢\u0006\u0004\b,\u0010-J\u001f\u00101\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010/\u001a\u00020*H\u0000¢\u0006\u0004\b0\u0010-J\u001f\u00105\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u00062\u0006\u00102\u001a\u00020\u0010H\u0000¢\u0006\u0004\b3\u00104J%\u00109\u001a\u00020\u00122\u0006\u00106\u001a\u00020\u001a2\u0006\u00107\u001a\u00020\u00062\u0006\u00108\u001a\u00020\u0006¢\u0006\u0004\b9\u0010:J\r\u0010;\u001a\u00020\u0012¢\u0006\u0004\b;\u0010<J\r\u00109\u001a\u00020\u0012¢\u0006\u0004\b9\u0010<J\r\u0010=\u001a\u00020\u0012¢\u0006\u0004\b=\u0010<J\r\u0010>\u001a\u00020\u0012¢\u0006\u0004\b>\u0010<J\u0015\u0010?\u001a\u00020\u00122\u0006\u0010/\u001a\u00020*¢\u0006\u0004\b?\u0010@J\u000f\u0010A\u001a\u00020\u0012H\u0016¢\u0006\u0004\bA\u0010<J)\u0010A\u001a\u00020\u00122\u0006\u0010B\u001a\u00020*2\u0006\u0010C\u001a\u00020*2\b\u0010E\u001a\u0004\u0018\u00010DH\u0000¢\u0006\u0004\bF\u0010GJ\u0019\u0010I\u001a\u00020\u00122\b\b\u0002\u0010H\u001a\u00020\u001aH\u0007¢\u0006\u0004\bI\u0010JJ\u0015\u0010M\u001a\u00020\u00122\u0006\u0010L\u001a\u00020K¢\u0006\u0004\bM\u0010NJ\u0015\u0010P\u001a\u00020\u001a2\u0006\u0010O\u001a\u00020\u0010¢\u0006\u0004\bP\u0010QJ\u000f\u0010S\u001a\u00020\u0012H\u0000¢\u0006\u0004\bR\u0010<J\u0017\u0010V\u001a\u00020\u001a2\u0006\u0010\r\u001a\u00020\u0006H\u0000¢\u0006\u0004\bT\u0010UJ%\u0010Y\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u00062\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017H\u0000¢\u0006\u0004\bW\u0010XJ-\u0010]\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u00062\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010Z\u001a\u00020\u001aH\u0000¢\u0006\u0004\b[\u0010\\J/\u0010b\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010_\u001a\u00020^2\u0006\u0010'\u001a\u00020\u00062\u0006\u0010Z\u001a\u00020\u001aH\u0000¢\u0006\u0004\b`\u0010aJ\u001f\u0010d\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010+\u001a\u00020*H\u0000¢\u0006\u0004\bc\u0010-R\u001a\u0010i\u001a\u00020\u001a8\u0000X\u0080\u0004¢\u0006\f\n\u0004\be\u0010f\u001a\u0004\bg\u0010hR\u001a\u0010o\u001a\u00020j8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bk\u0010l\u001a\u0004\bm\u0010nR&\u0010u\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0p8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bq\u0010r\u001a\u0004\bs\u0010tR\u001a\u0010{\u001a\u00020v8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bw\u0010x\u001a\u0004\by\u0010zR$\u0010\u0081\u0001\u001a\u00020\u00068\u0000@\u0000X\u0080\u000e¢\u0006\u0013\n\u0004\b|\u0010}\u001a\u0004\b~\u0010\b\"\u0005\b\u007f\u0010\u0080\u0001R'\u0010\u0085\u0001\u001a\u00020\u00068\u0000@\u0000X\u0080\u000e¢\u0006\u0016\n\u0005\b\u0082\u0001\u0010}\u001a\u0005\b\u0083\u0001\u0010\b\"\u0006\b\u0084\u0001\u0010\u0080\u0001R \u0010\u008b\u0001\u001a\u00030\u0086\u00018\u0000X\u0080\u0004¢\u0006\u0010\n\u0006\b\u0087\u0001\u0010\u0088\u0001\u001a\u0006\b\u0089\u0001\u0010\u008a\u0001R\u001c\u0010\u0090\u0001\u001a\u00020K8\u0006¢\u0006\u0010\n\u0006\b\u008c\u0001\u0010\u008d\u0001\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001R(\u0010\u0094\u0001\u001a\u00020K8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b\u0091\u0001\u0010\u008d\u0001\u001a\u0006\b\u0092\u0001\u0010\u008f\u0001\"\u0005\b\u0093\u0001\u0010NR\u001d\u0010\u009a\u0001\u001a\u00030\u0095\u00018\u0006¢\u0006\u0010\n\u0006\b\u0096\u0001\u0010\u0097\u0001\u001a\u0006\b\u0098\u0001\u0010\u0099\u0001R*\u0010 \u0001\u001a\u00020\u00102\u0007\u0010\u009b\u0001\u001a\u00020\u00108\u0006@BX\u0086\u000e¢\u0006\u0010\n\u0006\b\u009c\u0001\u0010\u009d\u0001\u001a\u0006\b\u009e\u0001\u0010\u009f\u0001R*\u0010£\u0001\u001a\u00020\u00102\u0007\u0010\u009b\u0001\u001a\u00020\u00108\u0006@BX\u0086\u000e¢\u0006\u0010\n\u0006\b¡\u0001\u0010\u009d\u0001\u001a\u0006\b¢\u0001\u0010\u009f\u0001R \u0010©\u0001\u001a\u00030¤\u00018\u0000X\u0080\u0004¢\u0006\u0010\n\u0006\b¥\u0001\u0010¦\u0001\u001a\u0006\b§\u0001\u0010¨\u0001R\u001d\u0010¯\u0001\u001a\u00030ª\u00018\u0006¢\u0006\u0010\n\u0006\b«\u0001\u0010¬\u0001\u001a\u0006\b\u00ad\u0001\u0010®\u0001R!\u0010µ\u0001\u001a\u00070°\u0001R\u00020\u00008\u0006¢\u0006\u0010\n\u0006\b±\u0001\u0010²\u0001\u001a\u0006\b³\u0001\u0010´\u0001¨\u0006º\u0001"}, d2 = {"Lokhttp3/internal/http2/Http2Connection;", "Ljava/io/Closeable;", "Lokhttp3/internal/http2/Http2Connection$Builder;", "builder", "<init>", "(Lokhttp3/internal/http2/Http2Connection$Builder;)V", "", "openStreamCount", "()I", "id", "Lokhttp3/internal/http2/Http2Stream;", "getStream", "(I)Lokhttp3/internal/http2/Http2Stream;", "streamId", "removeStream$okhttp", "removeStream", "", "read", "", "updateConnectionFlowControl$okhttp", "(J)V", "updateConnectionFlowControl", "associatedStreamId", "", "Lokhttp3/internal/http2/Header;", "requestHeaders", "", "out", "pushStream", "(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;", "newStream", "(Ljava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;", "outFinished", "alternating", "writeHeaders$okhttp", "(IZLjava/util/List;)V", "writeHeaders", "Lokio/Buffer;", "buffer", "byteCount", "writeData", "(IZLokio/Buffer;J)V", "Lokhttp3/internal/http2/ErrorCode;", "errorCode", "writeSynResetLater$okhttp", "(ILokhttp3/internal/http2/ErrorCode;)V", "writeSynResetLater", "statusCode", "writeSynReset$okhttp", "writeSynReset", "unacknowledgedBytesRead", "writeWindowUpdateLater$okhttp", "(IJ)V", "writeWindowUpdateLater", "reply", "payload1", "payload2", "writePing", "(ZII)V", "writePingAndAwaitPong", "()V", "awaitPong", "flush", "shutdown", "(Lokhttp3/internal/http2/ErrorCode;)V", "close", "connectionCode", "streamCode", "Ljava/io/IOException;", "cause", "close$okhttp", "(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V", "sendConnectionPreface", "start", "(Z)V", "Lokhttp3/internal/http2/Settings;", "settings", "setSettings", "(Lokhttp3/internal/http2/Settings;)V", "nowNs", "isHealthy", "(J)Z", "sendDegradedPingLater$okhttp", "sendDegradedPingLater", "pushedStream$okhttp", "(I)Z", "pushedStream", "pushRequestLater$okhttp", "(ILjava/util/List;)V", "pushRequestLater", "inFinished", "pushHeadersLater$okhttp", "(ILjava/util/List;Z)V", "pushHeadersLater", "Lokio/BufferedSource;", "source", "pushDataLater$okhttp", "(ILokio/BufferedSource;IZ)V", "pushDataLater", "pushResetLater$okhttp", "pushResetLater", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Z", "getClient$okhttp", "()Z", "client", "Lokhttp3/internal/http2/Http2Connection$Listener;", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Lokhttp3/internal/http2/Http2Connection$Listener;", "getListener$okhttp", "()Lokhttp3/internal/http2/Http2Connection$Listener;", "listener", "", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "Ljava/util/Map;", "getStreams$okhttp", "()Ljava/util/Map;", "streams", "", "뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨", "Ljava/lang/String;", "getConnectionName$okhttp", "()Ljava/lang/String;", "connectionName", "뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨", "I", "getLastGoodStreamId$okhttp", "setLastGoodStreamId$okhttp", "(I)V", "lastGoodStreamId", "뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤", "getNextStreamId$okhttp", "setNextStreamId$okhttp", "nextStreamId", "Lokhttp3/internal/http2/FlowControlListener;", "뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡", "Lokhttp3/internal/http2/FlowControlListener;", "getFlowControlListener$okhttp", "()Lokhttp3/internal/http2/FlowControlListener;", "flowControlListener", "뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽", "Lokhttp3/internal/http2/Settings;", "getOkHttpSettings", "()Lokhttp3/internal/http2/Settings;", "okHttpSettings", "뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨", "getPeerSettings", "setPeerSettings", "peerSettings", "Lokhttp3/internal/http2/flowcontrol/WindowCounter;", "뎬딐됨듼듨드뎹땠땁땥딝땐딌들듌뒝땠둬돤됴땵돴돤땋땋딄둑딌뒬땰돤딄땧땄돰뒨둥돠땯뒨뒋뒨땄땲땜듰딨땝돳땬뒉뒼땩딽뒹땩땋딜땜듽땨땪둡딃됩땜뒾뒨땪딅듔땻뒼뒀돠득뒋땸된땳딹딀돼땵뎡뎨땦땋둘돶땯뒛딃듸돷돸든땲땟뒼딟땧듟됫되됐뎨둑뒷뒐뎹땧돳디뒐땬뒋됐따뎠듰뒻땮되듸땫땠둡뒨두", "Lokhttp3/internal/http2/flowcontrol/WindowCounter;", "getReadBytes", "()Lokhttp3/internal/http2/flowcontrol/WindowCounter;", "readBytes", "<set-?>", "뎬딹땋뎨땵뒀땸땤딹딌땩두돷돛딤둥뒼득땁뒝뎰땨딜뎡땀딞되뒈듼땃땤됨딃땣땍땡둡뎨딌땪돠뒐딀딄뎹돤둣딤땡듌뒹든됫듰둠땭땻듔땔둥들될돵딸됴돳돰뒉됴뒛딤땟땧땨딄뒋땀딹땭뎹뎨딜땪돴땧딸뎻땋땟뒋땮뎰땳드뒐돰뒘딟돸땟둥땧딻뎸딠딞땍돨돸땁둡뒙돝뒋딜듬듰돳딨딀돴뒝돛뎨땩뒝땬듟뒋돨", "J", "getWriteBytesTotal", "()J", "writeBytesTotal", "뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥", "getWriteBytesMaximum", "writeBytesMaximum", "Ljava/net/Socket;", "뎬땍뒹듽돨득돛되도땩뒛땦듬딠드돼뒙땧뒵땃듽듽돶딁된땝듽땥듰딝땪땍땹땥땹따땝딽듼뒷돝땠듌땝땸뎻뎠딜되땡딹땦뎹돼들뒵됫돰땮들듌뎬듌땄땲뎽딞딽땹돨딟땅뎠돳땲뎹땥땥땰땧뒀뎡돴뒾됐둔땃땮땣딝땵딁됩땦땲뒨돠딜된득딠딜디딐땯땧땱둣땋땣땩된딄뒤둠딝됩딹뒹둥득돴딝땮뎽딎듻딃딹땠", "Ljava/net/Socket;", "getSocket$okhttp", "()Ljava/net/Socket;", "socket", "Lokhttp3/internal/http2/Http2Writer;", "뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디", "Lokhttp3/internal/http2/Http2Writer;", "getWriter", "()Lokhttp3/internal/http2/Http2Writer;", "writer", "Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻", "Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "getReaderRunnable", "()Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "readerRunnable", "Companion", "Builder", "Listener", "ReaderRunnable", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttp2Connection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n+ 2 -UtilJvm.kt\nokhttp3/internal/_UtilJvmKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 -UtilCommon.kt\nokhttp3/internal/_UtilCommonKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1013:1\n272#2:1014\n266#2:1016\n266#2:1017\n334#2,4:1018\n1#3:1015\n226#4,5:1022\n226#4,5:1030\n226#4,5:1036\n226#4,5:1041\n37#5,2:1027\n13309#6:1029\n13310#6:1035\n*S KotlinDebug\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n*L\n184#1:1014\n321#1:1016\n404#1:1017\n448#1:1018,4\n450#1:1022,5\n463#1:1030,5\n469#1:1036,5\n474#1:1041,5\n457#1:1027,2\n462#1:1029\n462#1:1035\n*E\n"})
/* loaded from: classes3.dex */
public final class Http2Connection implements Closeable {
    public static final int AWAIT_PING = 3;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int DEGRADED_PING = 2;
    public static final int DEGRADED_PONG_TIMEOUT_NS = 1000000000;
    public static final int INTERVAL_PING = 1;
    public static final int OKHTTP_CLIENT_WINDOW_SIZE = 16777216;

    /* renamed from: 뎰딌뒝뒙땸땫땨둘뒘둔뎹됐딜땬듬뎽돛땃뒤땟뎰땠땧딞딝뎰딐땦뎹디딻둑뎠듸땋돵듟땯둠땀듟듰땃땁땍땁땱땵땬딨뒝딤뒻땱둑뒀땩땄땩뎽땤돼땱딃딠됐땬뎽딝된둡득도돴듼땪딀땨땜땪땰땸되뒾뒀땹땵뎨땐뒈딻드듼땱땹듔도딄될땹딄둠딞됩뎹딟딨듐뒈땬뎨두딜둬땐딀땔땥둥땻돸돼뒹돼듔듌되뒝땠듨 */
    public static final Settings f3287xe698d;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: from kotlin metadata */
    public final boolean client;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: from kotlin metadata */
    public final Listener listener;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉 */
    public final LinkedHashMap f3290x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: from kotlin metadata */
    public final String connectionName;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: from kotlin metadata */
    public int lastGoodStreamId;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: from kotlin metadata */
    public int nextStreamId;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋 */
    public boolean f3294x34271fae;

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두 */
    public final TaskRunner f3295x95f25580;

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷 */
    public final TaskQueue f3296x3db60231;

    /* renamed from: 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎 */
    public final TaskQueue f3297x9d12c1f4;

    /* renamed from: 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠 */
    public final TaskQueue f3298x1db10c9d;

    /* renamed from: 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻 */
    public final PushObserver f3299xd2bcb0cf;

    /* renamed from: 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁 */
    public long f3300x8c6fc18a;

    /* renamed from: 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀 */
    public long f3301x1aebc6d9;

    /* renamed from: 뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨 */
    public long f3302xab142723;

    /* renamed from: 뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐 */
    public long f3303x85f0360e;

    /* renamed from: 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌 */
    public long f3304xad53da1a;

    /* renamed from: 뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬 */
    public long f3305x952a0a9e;

    /* renamed from: 뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅 */
    public long f3306xc20437a5;

    /* renamed from: 뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡, reason: from kotlin metadata */
    public final FlowControlListener flowControlListener;

    /* renamed from: 뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽, reason: from kotlin metadata */
    public final Settings okHttpSettings;

    /* renamed from: 뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨, reason: from kotlin metadata */
    public Settings peerSettings;

    /* renamed from: 뎬딐됨듼듨드뎹땠땁땥딝땐딌들듌뒝땠둬돤됴땵돴돤땋땋딄둑딌뒬땰돤딄땧땄돰뒨둥돠땯뒨뒋뒨땄땲땜듰딨땝돳땬뒉뒼땩딽뒹땩땋딜땜듽땨땪둡딃됩땜뒾뒨땪딅듔땻뒼뒀돠득뒋땸된땳딹딀돼땵뎡뎨땦땋둘돶땯뒛딃듸돷돸든땲땟뒼딟땧듟됫되됐뎨둑뒷뒐뎹땧돳디뒐땬뒋됐따뎠듰뒻땮되듸땫땠둡뒨두, reason: from kotlin metadata */
    public final WindowCounter readBytes;

    /* renamed from: 뎬딹땋뎨땵뒀땸땤딹딌땩두돷돛딤둥뒼득땁뒝뎰땨딜뎡땀딞되뒈듼땃땤됨딃땣땍땡둡뎨딌땪돠뒐딀딄뎹돤둣딤땡듌뒹든됫듰둠땭땻듔땔둥들될돵딸됴돳돰뒉됴뒛딤땟땧땨딄뒋땀딹땭뎹뎨딜땪돴땧딸뎻땋땟뒋땮뎰땳드뒐돰뒘딟돸땟둥땧딻뎸딠딞땍돨돸땁둡뒙돝뒋딜듬듰돳딨딀돴뒝돛뎨땩뒝땬듟뒋돨, reason: from kotlin metadata */
    public long writeBytesTotal;

    /* renamed from: 뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥, reason: from kotlin metadata */
    public long writeBytesMaximum;

    /* renamed from: 뎬땍뒹듽돨득돛되도땩뒛땦듬딠드돼뒙땧뒵땃듽듽돶딁된땝듽땥듰딝땪땍땹땥땹따땝딽듼뒷돝땠듌땝땸뎻뎠딜되땡딹땦뎹돼들뒵됫돰땮들듌뎬듌땄땲뎽딞딽땹돨딟땅뎠돳땲뎹땥땥땰땧뒀뎡돴뒾됐둔땃땮땣딝땵딁됩땦땲뒨돠딜된득딠딜디딐땯땧땱둣땋땣땩된딄뒤둠딝됩딹뒹둥득돴딝땮뎽딎듻딃딹땠, reason: from kotlin metadata */
    public final Socket socket;

    /* renamed from: 뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디, reason: from kotlin metadata */
    public final Http2Writer writer;

    /* renamed from: 뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻, reason: from kotlin metadata */
    public final ReaderRunnable readerRunnable;

    /* renamed from: 뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬 */
    public final LinkedHashSet f3316x742e2fda;

    @Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b:\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J5\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\t\u0010\u0010J\u0015\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001b\u0010\u001cJ\r\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001e\u0010\u001fR\"\u0010\u0003\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\"\u0010\t\u001a\u00020\b8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b\t\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\"\u0010/\u001a\u00020\n8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\"\u0010\r\u001a\u00020\f8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b\r\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\"\u0010\u000f\u001a\u00020\u000e8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b\u000f\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\"\u0010\u0012\u001a\u00020\u00118\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\"\u0010\u0015\u001a\u00020\u00148\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bE\u0010F\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\"\u0010\u0018\u001a\u00020\u00178\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bK\u0010L\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR\"\u0010\u001b\u001a\u00020\u001a8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bQ\u0010R\u001a\u0004\bS\u0010T\"\u0004\bU\u0010V¨\u0006W"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Builder;", "", "", "client", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "<init>", "(ZLokhttp3/internal/concurrent/TaskRunner;)V", "Ljava/net/Socket;", "socket", "", "peerName", "Lokio/BufferedSource;", "source", "Lokio/BufferedSink;", "sink", "(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/http2/Http2Connection$Builder;", "Lokhttp3/internal/http2/Http2Connection$Listener;", "listener", "(Lokhttp3/internal/http2/Http2Connection$Listener;)Lokhttp3/internal/http2/Http2Connection$Builder;", "Lokhttp3/internal/http2/PushObserver;", "pushObserver", "(Lokhttp3/internal/http2/PushObserver;)Lokhttp3/internal/http2/Http2Connection$Builder;", "", "pingIntervalMillis", "(I)Lokhttp3/internal/http2/Http2Connection$Builder;", "Lokhttp3/internal/http2/FlowControlListener;", "flowControlListener", "(Lokhttp3/internal/http2/FlowControlListener;)Lokhttp3/internal/http2/Http2Connection$Builder;", "Lokhttp3/internal/http2/Http2Connection;", "build", "()Lokhttp3/internal/http2/Http2Connection;", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Z", "getClient$okhttp", "()Z", "setClient$okhttp", "(Z)V", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Lokhttp3/internal/concurrent/TaskRunner;", "getTaskRunner$okhttp", "()Lokhttp3/internal/concurrent/TaskRunner;", "Ljava/net/Socket;", "getSocket$okhttp", "()Ljava/net/Socket;", "setSocket$okhttp", "(Ljava/net/Socket;)V", "connectionName", "Ljava/lang/String;", "getConnectionName$okhttp", "()Ljava/lang/String;", "setConnectionName$okhttp", "(Ljava/lang/String;)V", "Lokio/BufferedSource;", "getSource$okhttp", "()Lokio/BufferedSource;", "setSource$okhttp", "(Lokio/BufferedSource;)V", "Lokio/BufferedSink;", "getSink$okhttp", "()Lokio/BufferedSink;", "setSink$okhttp", "(Lokio/BufferedSink;)V", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "Lokhttp3/internal/http2/Http2Connection$Listener;", "getListener$okhttp", "()Lokhttp3/internal/http2/Http2Connection$Listener;", "setListener$okhttp", "(Lokhttp3/internal/http2/Http2Connection$Listener;)V", "뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨", "Lokhttp3/internal/http2/PushObserver;", "getPushObserver$okhttp", "()Lokhttp3/internal/http2/PushObserver;", "setPushObserver$okhttp", "(Lokhttp3/internal/http2/PushObserver;)V", "뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨", "I", "getPingIntervalMillis$okhttp", "()I", "setPingIntervalMillis$okhttp", "(I)V", "뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤", "Lokhttp3/internal/http2/FlowControlListener;", "getFlowControlListener$okhttp", "()Lokhttp3/internal/http2/FlowControlListener;", "setFlowControlListener$okhttp", "(Lokhttp3/internal/http2/FlowControlListener;)V", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Builder {
        public String connectionName;
        public BufferedSink sink;
        public Socket socket;
        public BufferedSource source;

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: from kotlin metadata */
        public boolean client;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: from kotlin metadata */
        public final TaskRunner taskRunner;

        /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: from kotlin metadata */
        public Listener listener;

        /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: from kotlin metadata */
        public PushObserver pushObserver;

        /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: from kotlin metadata */
        public int pingIntervalMillis;

        /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: from kotlin metadata */
        public FlowControlListener flowControlListener;

        public Builder(boolean z, @NotNull TaskRunner taskRunner) {
            Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
            this.client = z;
            this.taskRunner = taskRunner;
            this.listener = Listener.REFUSE_INCOMING_STREAMS;
            this.pushObserver = PushObserver.CANCEL;
            this.flowControlListener = FlowControlListener.None.INSTANCE;
        }

        public static /* synthetic */ Builder socket$default(Builder builder, Socket socket, String str, BufferedSource bufferedSource, BufferedSink bufferedSink, int i, Object obj) {
            if ((i & 2) != 0) {
                str = _UtilJvmKt.peerName(socket);
            }
            if ((i & 4) != 0) {
                bufferedSource = Okio.buffer(Okio.source(socket));
            }
            if ((i & 8) != 0) {
                bufferedSink = Okio.buffer(Okio.sink(socket));
            }
            return builder.socket(socket, str, bufferedSource, bufferedSink);
        }

        @NotNull
        public final Http2Connection build() {
            return new Http2Connection(this);
        }

        @NotNull
        public final Builder flowControlListener(@NotNull FlowControlListener flowControlListener) {
            Intrinsics.checkNotNullParameter(flowControlListener, "flowControlListener");
            this.flowControlListener = flowControlListener;
            return this;
        }

        /* renamed from: getClient$okhttp, reason: from getter */
        public final boolean getClient() {
            return this.client;
        }

        @NotNull
        public final String getConnectionName$okhttp() {
            String str = this.connectionName;
            if (str != null) {
                return str;
            }
            return null;
        }

        @NotNull
        /* renamed from: getFlowControlListener$okhttp, reason: from getter */
        public final FlowControlListener getFlowControlListener() {
            return this.flowControlListener;
        }

        @NotNull
        /* renamed from: getListener$okhttp, reason: from getter */
        public final Listener getListener() {
            return this.listener;
        }

        /* renamed from: getPingIntervalMillis$okhttp, reason: from getter */
        public final int getPingIntervalMillis() {
            return this.pingIntervalMillis;
        }

        @NotNull
        /* renamed from: getPushObserver$okhttp, reason: from getter */
        public final PushObserver getPushObserver() {
            return this.pushObserver;
        }

        @NotNull
        public final BufferedSink getSink$okhttp() {
            BufferedSink bufferedSink = this.sink;
            if (bufferedSink != null) {
                return bufferedSink;
            }
            return null;
        }

        @NotNull
        public final Socket getSocket$okhttp() {
            Socket socket = this.socket;
            if (socket != null) {
                return socket;
            }
            return null;
        }

        @NotNull
        public final BufferedSource getSource$okhttp() {
            BufferedSource bufferedSource = this.source;
            if (bufferedSource != null) {
                return bufferedSource;
            }
            return null;
        }

        @NotNull
        /* renamed from: getTaskRunner$okhttp, reason: from getter */
        public final TaskRunner getTaskRunner() {
            return this.taskRunner;
        }

        @NotNull
        public final Builder listener(@NotNull Listener listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.listener = listener;
            return this;
        }

        @NotNull
        public final Builder pingIntervalMillis(int pingIntervalMillis) {
            this.pingIntervalMillis = pingIntervalMillis;
            return this;
        }

        @NotNull
        public final Builder pushObserver(@NotNull PushObserver pushObserver) {
            Intrinsics.checkNotNullParameter(pushObserver, "pushObserver");
            this.pushObserver = pushObserver;
            return this;
        }

        public final void setClient$okhttp(boolean z) {
            this.client = z;
        }

        public final void setConnectionName$okhttp(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.connectionName = str;
        }

        public final void setFlowControlListener$okhttp(@NotNull FlowControlListener flowControlListener) {
            Intrinsics.checkNotNullParameter(flowControlListener, "<set-?>");
            this.flowControlListener = flowControlListener;
        }

        public final void setListener$okhttp(@NotNull Listener listener) {
            Intrinsics.checkNotNullParameter(listener, "<set-?>");
            this.listener = listener;
        }

        public final void setPingIntervalMillis$okhttp(int i) {
            this.pingIntervalMillis = i;
        }

        public final void setPushObserver$okhttp(@NotNull PushObserver pushObserver) {
            Intrinsics.checkNotNullParameter(pushObserver, "<set-?>");
            this.pushObserver = pushObserver;
        }

        public final void setSink$okhttp(@NotNull BufferedSink bufferedSink) {
            Intrinsics.checkNotNullParameter(bufferedSink, "<set-?>");
            this.sink = bufferedSink;
        }

        public final void setSocket$okhttp(@NotNull Socket socket) {
            Intrinsics.checkNotNullParameter(socket, "<set-?>");
            this.socket = socket;
        }

        public final void setSource$okhttp(@NotNull BufferedSource bufferedSource) {
            Intrinsics.checkNotNullParameter(bufferedSource, "<set-?>");
            this.source = bufferedSource;
        }

        @JvmOverloads
        @NotNull
        public final Builder socket(@NotNull Socket socket) {
            Intrinsics.checkNotNullParameter(socket, "socket");
            return socket$default(this, socket, null, null, null, 14, null);
        }

        @JvmOverloads
        @NotNull
        public final Builder socket(@NotNull Socket socket, @NotNull String peerName) {
            Intrinsics.checkNotNullParameter(socket, "socket");
            Intrinsics.checkNotNullParameter(peerName, "peerName");
            return socket$default(this, socket, peerName, null, null, 12, null);
        }

        @JvmOverloads
        @NotNull
        public final Builder socket(@NotNull Socket socket, @NotNull String peerName, @NotNull BufferedSource source) {
            Intrinsics.checkNotNullParameter(socket, "socket");
            Intrinsics.checkNotNullParameter(peerName, "peerName");
            Intrinsics.checkNotNullParameter(source, "source");
            return socket$default(this, socket, peerName, source, null, 8, null);
        }

        @JvmOverloads
        @NotNull
        public final Builder socket(@NotNull Socket socket, @NotNull String peerName, @NotNull BufferedSource source, @NotNull BufferedSink sink) {
            String m2952x5ac5058d;
            Intrinsics.checkNotNullParameter(socket, "socket");
            Intrinsics.checkNotNullParameter(peerName, "peerName");
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(sink, "sink");
            setSocket$okhttp(socket);
            if (this.client) {
                m2952x5ac5058d = _UtilJvmKt.okHttpName + ' ' + peerName;
            } else {
                m2952x5ac5058d = AbstractC0362x4440ab85.m2952x5ac5058d("MockWebServer ", peerName);
            }
            setConnectionName$okhttp(m2952x5ac5058d);
            setSource$okhttp(source);
            setSink$okhttp(sink);
            return this;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\tR\u0014\u0010\u000b\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u0014\u0010\f\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\tR\u0014\u0010\r\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\t¨\u0006\u000e"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Companion;", "", "Lokhttp3/internal/http2/Settings;", "DEFAULT_SETTINGS", "Lokhttp3/internal/http2/Settings;", "getDEFAULT_SETTINGS", "()Lokhttp3/internal/http2/Settings;", "", "AWAIT_PING", "I", "DEGRADED_PING", "DEGRADED_PONG_TIMEOUT_NS", "INTERVAL_PING", "OKHTTP_CLIENT_WINDOW_SIZE", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        @NotNull
        public final Settings getDEFAULT_SETTINGS() {
            return Http2Connection.f3287xe698d;
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH&¨\u0006\r"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Listener;", "", "()V", "onSettings", "", "connection", "Lokhttp3/internal/http2/Http2Connection;", "settings", "Lokhttp3/internal/http2/Settings;", "onStream", "stream", "Lokhttp3/internal/http2/Http2Stream;", "Companion", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static abstract class Listener {

        @JvmField
        @NotNull
        public static final Listener REFUSE_INCOMING_STREAMS = new Listener();

        public void onSettings(@NotNull Http2Connection connection, @NotNull Settings settings) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            Intrinsics.checkNotNullParameter(settings, "settings");
        }

        public abstract void onStream(@NotNull Http2Stream stream);
    }

    @Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0004\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u0011\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ/\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J5\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\f2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001b\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 J\u001d\u0010!\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b!\u0010 J\u000f\u0010\"\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\"\u0010\tJ'\u0010&\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\n2\u0006\u0010$\u001a\u00020\f2\u0006\u0010%\u001a\u00020\fH\u0016¢\u0006\u0004\b&\u0010'J'\u0010+\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,J\u001f\u0010/\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b/\u00100J/\u00104\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u00101\u001a\u00020\f2\u0006\u00102\u001a\u00020\f2\u0006\u00103\u001a\u00020\nH\u0016¢\u0006\u0004\b4\u00105J-\u00108\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u00106\u001a\u00020\f2\f\u00107\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0016¢\u0006\u0004\b8\u00109J?\u0010@\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020)2\u0006\u0010=\u001a\u00020:2\u0006\u0010>\u001a\u00020\f2\u0006\u0010?\u001a\u00020-H\u0016¢\u0006\u0004\b@\u0010AR\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E¨\u0006F"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "Lokhttp3/internal/http2/Http2Reader$Handler;", "Lkotlin/Function0;", "", "Lokhttp3/internal/http2/Http2Reader;", "reader", "<init>", "(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V", "invoke", "()V", "", "inFinished", "", "streamId", "Lokio/BufferedSource;", "source", "length", "data", "(ZILokio/BufferedSource;I)V", "associatedStreamId", "", "Lokhttp3/internal/http2/Header;", "headerBlock", "headers", "(ZIILjava/util/List;)V", "Lokhttp3/internal/http2/ErrorCode;", "errorCode", "rstStream", "(ILokhttp3/internal/http2/ErrorCode;)V", "clearPrevious", "Lokhttp3/internal/http2/Settings;", "settings", "(ZLokhttp3/internal/http2/Settings;)V", "applyAndAckSettings", "ackSettings", "ack", "payload1", "payload2", "ping", "(ZII)V", "lastGoodStreamId", "Lokio/ByteString;", "debugData", "goAway", "(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V", "", "windowSizeIncrement", "windowUpdate", "(IJ)V", "streamDependency", "weight", "exclusive", "priority", "(IIIZ)V", "promisedStreamId", "requestHeaders", "pushPromise", "(IILjava/util/List;)V", "", "origin", "protocol", "host", "port", "maxAge", "alternateService", "(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lokhttp3/internal/http2/Http2Reader;", "getReader$okhttp", "()Lokhttp3/internal/http2/Http2Reader;", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nHttp2Connection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 -UtilJvm.kt\nokhttp3/internal/_UtilJvmKt\n*L\n1#1,1013:1\n37#2,2:1014\n37#2,2:1017\n272#3:1016\n272#3:1019\n*S KotlinDebug\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n*L\n760#1:1014,2\n831#1:1017,2\n804#1:1016\n848#1:1019\n*E\n"})
    /* loaded from: classes3.dex */
    public final class ReaderRunnable implements Http2Reader.Handler, Function0<Unit> {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: from kotlin metadata */
        public final Http2Reader reader;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫 */
        public final /* synthetic */ Http2Connection f3324x3271d0aa;

        public ReaderRunnable(@NotNull Http2Connection http2Connection, Http2Reader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            this.f3324x3271d0aa = http2Connection;
            this.reader = reader;
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ackSettings() {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void alternateService(int streamId, @NotNull String origin, @NotNull ByteString protocol, @NotNull String host, int port, long maxAge) {
            Intrinsics.checkNotNullParameter(origin, "origin");
            Intrinsics.checkNotNullParameter(protocol, "protocol");
            Intrinsics.checkNotNullParameter(host, "host");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v23 */
        /* JADX WARN: Type inference failed for: r0v3 */
        /* JADX WARN: Type inference failed for: r0v4, types: [T, okhttp3.internal.http2.Settings] */
        public final void applyAndAckSettings(boolean clearPrevious, @NotNull Settings settings) {
            ?? r0;
            long initialWindowSize;
            int i;
            Http2Stream[] http2StreamArr;
            Http2Stream[] http2StreamArr2;
            Settings settings2 = settings;
            Intrinsics.checkNotNullParameter(settings2, "settings");
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            Http2Writer writer = this.f3324x3271d0aa.getWriter();
            Http2Connection http2Connection = this.f3324x3271d0aa;
            synchronized (writer) {
                synchronized (http2Connection) {
                    try {
                        Settings peerSettings = http2Connection.getPeerSettings();
                        if (clearPrevious) {
                            r0 = settings2;
                        } else {
                            Settings settings3 = new Settings();
                            settings3.merge(peerSettings);
                            settings3.merge(settings2);
                            r0 = settings3;
                        }
                        objectRef.element = r0;
                        initialWindowSize = r0.getInitialWindowSize() - peerSettings.getInitialWindowSize();
                        if (initialWindowSize != 0 && !http2Connection.getStreams$okhttp().isEmpty()) {
                            http2StreamArr = (Http2Stream[]) http2Connection.getStreams$okhttp().values().toArray(new Http2Stream[0]);
                            http2StreamArr2 = http2StreamArr;
                            http2Connection.setPeerSettings((Settings) objectRef.element);
                            TaskQueue.execute$default(http2Connection.f3298x1db10c9d, http2Connection.getConnectionName() + " onSettings", 0L, false, new C0323x3271d0aa(http2Connection, objectRef), 6, null);
                        }
                        http2StreamArr = null;
                        http2StreamArr2 = http2StreamArr;
                        http2Connection.setPeerSettings((Settings) objectRef.element);
                        TaskQueue.execute$default(http2Connection.f3298x1db10c9d, http2Connection.getConnectionName() + " onSettings", 0L, false, new C0323x3271d0aa(http2Connection, objectRef), 6, null);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                try {
                    http2Connection.getWriter().applyAndAckSettings((Settings) objectRef.element);
                } catch (IOException e) {
                    Http2Connection.access$failConnection(http2Connection, e);
                }
            }
            if (http2StreamArr2 != null) {
                for (Http2Stream http2Stream : http2StreamArr2) {
                    synchronized (http2Stream) {
                        http2Stream.addBytesToWriteWindow(initialWindowSize);
                    }
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void data(boolean inFinished, int streamId, @NotNull BufferedSource source, int length) {
            Intrinsics.checkNotNullParameter(source, "source");
            Http2Connection http2Connection = this.f3324x3271d0aa;
            if (http2Connection.pushedStream$okhttp(streamId)) {
                http2Connection.pushDataLater$okhttp(streamId, source, length, inFinished);
                return;
            }
            Http2Stream stream = http2Connection.getStream(streamId);
            if (stream == null) {
                http2Connection.writeSynResetLater$okhttp(streamId, ErrorCode.PROTOCOL_ERROR);
                long j = length;
                http2Connection.updateConnectionFlowControl$okhttp(j);
                source.skip(j);
                return;
            }
            stream.receiveData(source, length);
            if (inFinished) {
                stream.receiveHeaders(_UtilJvmKt.EMPTY_HEADERS, true);
            }
        }

        @NotNull
        /* renamed from: getReader$okhttp, reason: from getter */
        public final Http2Reader getReader() {
            return this.reader;
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void goAway(int lastGoodStreamId, @NotNull ErrorCode errorCode, @NotNull ByteString debugData) {
            int i;
            Object[] array;
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            Intrinsics.checkNotNullParameter(debugData, "debugData");
            debugData.size();
            Http2Connection http2Connection = this.f3324x3271d0aa;
            synchronized (http2Connection) {
                array = http2Connection.getStreams$okhttp().values().toArray(new Http2Stream[0]);
                http2Connection.f3294x34271fae = true;
            }
            for (Http2Stream http2Stream : (Http2Stream[]) array) {
                if (http2Stream.getId() > lastGoodStreamId && http2Stream.isLocallyInitiated()) {
                    http2Stream.receiveRstStream(ErrorCode.REFUSED_STREAM);
                    this.f3324x3271d0aa.removeStream$okhttp(http2Stream.getId());
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void headers(boolean inFinished, int streamId, int associatedStreamId, @NotNull List<Header> headerBlock) {
            Intrinsics.checkNotNullParameter(headerBlock, "headerBlock");
            if (this.f3324x3271d0aa.pushedStream$okhttp(streamId)) {
                this.f3324x3271d0aa.pushHeadersLater$okhttp(streamId, headerBlock, inFinished);
                return;
            }
            Http2Connection http2Connection = this.f3324x3271d0aa;
            synchronized (http2Connection) {
                Http2Stream stream = http2Connection.getStream(streamId);
                if (stream == null) {
                    if (http2Connection.f3294x34271fae) {
                        return;
                    }
                    if (streamId <= http2Connection.getLastGoodStreamId()) {
                        return;
                    }
                    if (streamId % 2 == http2Connection.getNextStreamId() % 2) {
                        return;
                    }
                    Http2Stream http2Stream = new Http2Stream(streamId, http2Connection, false, inFinished, _UtilJvmKt.toHeaders(headerBlock));
                    http2Connection.setLastGoodStreamId$okhttp(streamId);
                    http2Connection.getStreams$okhttp().put(Integer.valueOf(streamId), http2Stream);
                    TaskQueue.execute$default(http2Connection.f3295x95f25580.newQueue(), http2Connection.getConnectionName() + '[' + streamId + "] onStream", 0L, false, new C0324x1378447b(http2Connection, http2Stream), 6, null);
                    return;
                }
                stream.receiveHeaders(_UtilJvmKt.toHeaders(headerBlock), inFinished);
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ping(boolean ack, int payload1, int payload2) {
            if (!ack) {
                TaskQueue.execute$default(this.f3324x3271d0aa.f3296x3db60231, this.f3324x3271d0aa.getConnectionName() + " ping", 0L, false, new C0325x75d576dc(this.f3324x3271d0aa, payload1, payload2), 6, null);
                return;
            }
            Http2Connection http2Connection = this.f3324x3271d0aa;
            synchronized (http2Connection) {
                try {
                    if (payload1 == 1) {
                        http2Connection.f3301x1aebc6d9++;
                    } else if (payload1 == 2) {
                        http2Connection.f3303x85f0360e++;
                    } else if (payload1 == 3) {
                        http2Connection.f3305x952a0a9e++;
                        Intrinsics.checkNotNull(http2Connection, "null cannot be cast to non-null type java.lang.Object");
                        http2Connection.notifyAll();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void priority(int streamId, int streamDependency, int weight, boolean exclusive) {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void pushPromise(int streamId, int promisedStreamId, @NotNull List<Header> requestHeaders) {
            Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
            this.f3324x3271d0aa.pushRequestLater$okhttp(promisedStreamId, requestHeaders);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void rstStream(int streamId, @NotNull ErrorCode errorCode) {
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            Http2Connection http2Connection = this.f3324x3271d0aa;
            if (http2Connection.pushedStream$okhttp(streamId)) {
                http2Connection.pushResetLater$okhttp(streamId, errorCode);
                return;
            }
            Http2Stream removeStream$okhttp = http2Connection.removeStream$okhttp(streamId);
            if (removeStream$okhttp != null) {
                removeStream$okhttp.receiveRstStream(errorCode);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void settings(boolean clearPrevious, @NotNull Settings settings) {
            Intrinsics.checkNotNullParameter(settings, "settings");
            Http2Connection http2Connection = this.f3324x3271d0aa;
            TaskQueue.execute$default(http2Connection.f3296x3db60231, http2Connection.getConnectionName() + " applyAndAckSettings", 0L, false, new C0326x9738a56c(this, clearPrevious, settings), 6, null);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void windowUpdate(int streamId, long windowSizeIncrement) {
            if (streamId == 0) {
                Http2Connection http2Connection = this.f3324x3271d0aa;
                synchronized (http2Connection) {
                    http2Connection.writeBytesMaximum = http2Connection.getWriteBytesMaximum() + windowSizeIncrement;
                    Intrinsics.checkNotNull(http2Connection, "null cannot be cast to non-null type java.lang.Object");
                    http2Connection.notifyAll();
                }
                return;
            }
            Http2Stream stream = this.f3324x3271d0aa.getStream(streamId);
            if (stream != null) {
                synchronized (stream) {
                    stream.addBytesToWriteWindow(windowSizeIncrement);
                }
            }
        }

        /* renamed from: invoke */
        public void invoke2() {
            ErrorCode errorCode;
            Http2Connection http2Connection = this.f3324x3271d0aa;
            Http2Reader http2Reader = this.reader;
            ErrorCode errorCode2 = ErrorCode.INTERNAL_ERROR;
            IOException e = null;
            try {
                try {
                    http2Reader.readConnectionPreface(this);
                    do {
                    } while (http2Reader.nextFrame(false, this));
                    errorCode = ErrorCode.NO_ERROR;
                    try {
                        errorCode2 = ErrorCode.CANCEL;
                        http2Connection.close$okhttp(errorCode, errorCode2, null);
                    } catch (IOException e2) {
                        e = e2;
                        errorCode2 = ErrorCode.PROTOCOL_ERROR;
                        http2Connection.close$okhttp(errorCode2, errorCode2, e);
                        _UtilCommonKt.closeQuietly(http2Reader);
                    }
                } catch (Throwable th) {
                    th = th;
                    http2Connection.close$okhttp(errorCode, errorCode2, e);
                    _UtilCommonKt.closeQuietly(http2Reader);
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
                errorCode = errorCode2;
            } catch (Throwable th2) {
                th = th2;
                errorCode = errorCode2;
                http2Connection.close$okhttp(errorCode, errorCode2, e);
                _UtilCommonKt.closeQuietly(http2Reader);
                throw th;
            }
            _UtilCommonKt.closeQuietly(http2Reader);
        }
    }

    static {
        Settings settings = new Settings();
        settings.set(7, 65535);
        settings.set(5, 16384);
        f3287xe698d = settings;
    }

    public Http2Connection(@NotNull Builder builder) {
        int i;
        Intrinsics.checkNotNullParameter(builder, "builder");
        boolean client = builder.getClient();
        this.client = client;
        this.listener = builder.getListener();
        this.f3290x1378447b = new LinkedHashMap();
        String connectionName$okhttp = builder.getConnectionName$okhttp();
        this.connectionName = connectionName$okhttp;
        if (builder.getClient()) {
            i = 3;
        } else {
            i = 2;
        }
        this.nextStreamId = i;
        TaskRunner taskRunner = builder.getTaskRunner();
        this.f3295x95f25580 = taskRunner;
        TaskQueue newQueue = taskRunner.newQueue();
        this.f3296x3db60231 = newQueue;
        this.f3297x9d12c1f4 = taskRunner.newQueue();
        this.f3298x1db10c9d = taskRunner.newQueue();
        this.f3299xd2bcb0cf = builder.getPushObserver();
        this.flowControlListener = builder.getFlowControlListener();
        Settings settings = new Settings();
        if (builder.getClient()) {
            settings.set(7, 16777216);
        }
        this.okHttpSettings = settings;
        this.peerSettings = f3287xe698d;
        this.readBytes = new WindowCounter(0);
        this.writeBytesMaximum = this.peerSettings.getInitialWindowSize();
        this.socket = builder.getSocket$okhttp();
        this.writer = new Http2Writer(builder.getSink$okhttp(), client);
        this.readerRunnable = new ReaderRunnable(this, new Http2Reader(builder.getSource$okhttp(), client));
        this.f3316x742e2fda = new LinkedHashSet();
        if (builder.getPingIntervalMillis() != 0) {
            long nanos = TimeUnit.MILLISECONDS.toNanos(builder.getPingIntervalMillis());
            newQueue.schedule(AbstractC0362x4440ab85.m2931x34271fae(connectionName$okhttp, " ping"), nanos, new C0322xfbe0c504(this, nanos));
        }
    }

    public static final void access$failConnection(Http2Connection http2Connection, IOException iOException) {
        http2Connection.getClass();
        ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
        http2Connection.close$okhttp(errorCode, errorCode, iOException);
    }

    public static /* synthetic */ void start$default(Http2Connection http2Connection, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        http2Connection.start(z);
    }

    public final synchronized void awaitPong() {
        while (this.f3305x952a0a9e < this.f3304xad53da1a) {
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
            wait();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        close$okhttp(ErrorCode.NO_ERROR, ErrorCode.CANCEL, null);
    }

    public final void close$okhttp(@NotNull ErrorCode connectionCode, @NotNull ErrorCode streamCode, @Nullable IOException cause) {
        int i;
        Object[] objArr;
        Intrinsics.checkNotNullParameter(connectionCode, "connectionCode");
        Intrinsics.checkNotNullParameter(streamCode, "streamCode");
        if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        try {
            shutdown(connectionCode);
        } catch (IOException unused) {
        }
        synchronized (this) {
            if (!this.f3290x1378447b.isEmpty()) {
                objArr = this.f3290x1378447b.values().toArray(new Http2Stream[0]);
                this.f3290x1378447b.clear();
            } else {
                objArr = null;
            }
        }
        Http2Stream[] http2StreamArr = (Http2Stream[]) objArr;
        if (http2StreamArr != null) {
            for (Http2Stream http2Stream : http2StreamArr) {
                try {
                    http2Stream.close(streamCode, cause);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.writer.close();
        } catch (IOException unused3) {
        }
        try {
            this.socket.close();
        } catch (IOException unused4) {
        }
        this.f3296x3db60231.shutdown();
        this.f3297x9d12c1f4.shutdown();
        this.f3298x1db10c9d.shutdown();
    }

    public final void flush() {
        this.writer.flush();
    }

    /* renamed from: getClient$okhttp, reason: from getter */
    public final boolean getClient() {
        return this.client;
    }

    @NotNull
    /* renamed from: getConnectionName$okhttp, reason: from getter */
    public final String getConnectionName() {
        return this.connectionName;
    }

    @NotNull
    /* renamed from: getFlowControlListener$okhttp, reason: from getter */
    public final FlowControlListener getFlowControlListener() {
        return this.flowControlListener;
    }

    /* renamed from: getLastGoodStreamId$okhttp, reason: from getter */
    public final int getLastGoodStreamId() {
        return this.lastGoodStreamId;
    }

    @NotNull
    /* renamed from: getListener$okhttp, reason: from getter */
    public final Listener getListener() {
        return this.listener;
    }

    /* renamed from: getNextStreamId$okhttp, reason: from getter */
    public final int getNextStreamId() {
        return this.nextStreamId;
    }

    @NotNull
    public final Settings getOkHttpSettings() {
        return this.okHttpSettings;
    }

    @NotNull
    public final Settings getPeerSettings() {
        return this.peerSettings;
    }

    @NotNull
    public final WindowCounter getReadBytes() {
        return this.readBytes;
    }

    @NotNull
    public final ReaderRunnable getReaderRunnable() {
        return this.readerRunnable;
    }

    @NotNull
    /* renamed from: getSocket$okhttp, reason: from getter */
    public final Socket getSocket() {
        return this.socket;
    }

    @Nullable
    public final synchronized Http2Stream getStream(int id) {
        return (Http2Stream) this.f3290x1378447b.get(Integer.valueOf(id));
    }

    @NotNull
    public final Map<Integer, Http2Stream> getStreams$okhttp() {
        return this.f3290x1378447b;
    }

    public final long getWriteBytesMaximum() {
        return this.writeBytesMaximum;
    }

    public final long getWriteBytesTotal() {
        return this.writeBytesTotal;
    }

    @NotNull
    public final Http2Writer getWriter() {
        return this.writer;
    }

    public final synchronized boolean isHealthy(long nowNs) {
        if (this.f3294x34271fae) {
            return false;
        }
        if (this.f3303x85f0360e < this.f3302xab142723) {
            if (nowNs >= this.f3306xc20437a5) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public final Http2Stream newStream(@NotNull List<Header> requestHeaders, boolean out) {
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        return m2612xfbe0c504(0, requestHeaders, out);
    }

    public final synchronized int openStreamCount() {
        return this.f3290x1378447b.size();
    }

    public final void pushDataLater$okhttp(int streamId, @NotNull BufferedSource source, int byteCount, boolean inFinished) {
        Intrinsics.checkNotNullParameter(source, "source");
        Buffer buffer = new Buffer();
        long j = byteCount;
        source.require(j);
        source.read(buffer, j);
        TaskQueue.execute$default(this.f3297x9d12c1f4, this.connectionName + '[' + streamId + "] onData", 0L, false, new C0865xa10fe802(this, streamId, buffer, byteCount, inFinished), 6, null);
    }

    public final void pushHeadersLater$okhttp(int streamId, @NotNull List<Header> requestHeaders, boolean inFinished) {
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        TaskQueue.execute$default(this.f3297x9d12c1f4, this.connectionName + '[' + streamId + "] onHeaders", 0L, false, new C0866xf516eb97(this, streamId, requestHeaders, inFinished), 6, null);
    }

    public final void pushRequestLater$okhttp(int streamId, @NotNull List<Header> requestHeaders) {
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        synchronized (this) {
            if (this.f3316x742e2fda.contains(Integer.valueOf(streamId))) {
                writeSynResetLater$okhttp(streamId, ErrorCode.PROTOCOL_ERROR);
                return;
            }
            this.f3316x742e2fda.add(Integer.valueOf(streamId));
            TaskQueue.execute$default(this.f3297x9d12c1f4, this.connectionName + '[' + streamId + "] onRequest", 0L, false, new C0867x1dab7530(this, streamId, requestHeaders, 2), 6, null);
        }
    }

    public final void pushResetLater$okhttp(int streamId, @NotNull ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        TaskQueue.execute$default(this.f3297x9d12c1f4, this.connectionName + '[' + streamId + "] onReset", 0L, false, new C0867x1dab7530(this, streamId, errorCode, 0), 6, null);
    }

    @NotNull
    public final Http2Stream pushStream(int associatedStreamId, @NotNull List<Header> requestHeaders, boolean out) {
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        if (!this.client) {
            return m2612xfbe0c504(associatedStreamId, requestHeaders, out);
        }
        throw new IllegalStateException("Client cannot push requests.");
    }

    public final boolean pushedStream$okhttp(int streamId) {
        return streamId != 0 && (streamId & 1) == 0;
    }

    @Nullable
    public final synchronized Http2Stream removeStream$okhttp(int streamId) {
        Http2Stream http2Stream;
        http2Stream = (Http2Stream) this.f3290x1378447b.remove(Integer.valueOf(streamId));
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
        notifyAll();
        return http2Stream;
    }

    public final void sendDegradedPingLater$okhttp() {
        synchronized (this) {
            long j = this.f3303x85f0360e;
            long j2 = this.f3302xab142723;
            if (j < j2) {
                return;
            }
            this.f3302xab142723 = j2 + 1;
            this.f3306xc20437a5 = System.nanoTime() + 1000000000;
            TaskQueue.execute$default(this.f3296x3db60231, AbstractC0362x4440ab85.m2936xd2bcb0cf(new StringBuilder(), this.connectionName, " ping"), 0L, false, new C0635x2b917e10(this, 2), 6, null);
        }
    }

    public final void setLastGoodStreamId$okhttp(int i) {
        this.lastGoodStreamId = i;
    }

    public final void setNextStreamId$okhttp(int i) {
        this.nextStreamId = i;
    }

    public final void setPeerSettings(@NotNull Settings settings) {
        Intrinsics.checkNotNullParameter(settings, "<set-?>");
        this.peerSettings = settings;
    }

    public final void setSettings(@NotNull Settings settings) {
        Intrinsics.checkNotNullParameter(settings, "settings");
        synchronized (this.writer) {
            synchronized (this) {
                if (!this.f3294x34271fae) {
                    this.okHttpSettings.merge(settings);
                } else {
                    throw new ConnectionShutdownException();
                }
            }
            this.writer.settings(settings);
        }
    }

    public final void shutdown(@NotNull ErrorCode statusCode) {
        Intrinsics.checkNotNullParameter(statusCode, "statusCode");
        synchronized (this.writer) {
            Ref.IntRef intRef = new Ref.IntRef();
            synchronized (this) {
                if (this.f3294x34271fae) {
                    return;
                }
                this.f3294x34271fae = true;
                int i = this.lastGoodStreamId;
                intRef.element = i;
                this.writer.goAway(i, statusCode, _UtilCommonKt.EMPTY_BYTE_ARRAY);
            }
        }
    }

    @JvmOverloads
    public final void start() {
        start$default(this, false, 1, null);
    }

    public final synchronized void updateConnectionFlowControl$okhttp(long read) {
        try {
            WindowCounter.update$default(this.readBytes, read, 0L, 2, null);
            long unacknowledged = this.readBytes.getUnacknowledged();
            if (unacknowledged >= this.okHttpSettings.getInitialWindowSize() / 2) {
                writeWindowUpdateLater$okhttp(0, unacknowledged);
                WindowCounter.update$default(this.readBytes, 0L, unacknowledged, 1, null);
            }
            this.flowControlListener.receivingConnectionWindowChanged(this.readBytes);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0038, code lost:
    
        throw new java.io.IOException("stream closed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003a, code lost:
    
        r3 = java.lang.Math.min((int) java.lang.Math.min(r12, r5 - r3), r8.writer.getF3374x75d576dc());
        r6 = r3;
        r8.writeBytesTotal += r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void writeData(int streamId, boolean outFinished, @Nullable Buffer buffer, long byteCount) {
        int min;
        long j;
        boolean z;
        if (byteCount == 0) {
            this.writer.data(outFinished, streamId, buffer, 0);
            return;
        }
        loop0: while (byteCount > 0) {
            synchronized (this) {
                while (true) {
                    try {
                        try {
                            long j2 = this.writeBytesTotal;
                            long j3 = this.writeBytesMaximum;
                            if (j2 < j3) {
                                break;
                            }
                            if (!this.f3290x1378447b.containsKey(Integer.valueOf(streamId))) {
                                break loop0;
                            }
                            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
                            wait();
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            byteCount -= j;
            Http2Writer http2Writer = this.writer;
            if (outFinished && byteCount == 0) {
                z = true;
            } else {
                z = false;
            }
            http2Writer.data(z, streamId, buffer, min);
        }
    }

    public final void writeHeaders$okhttp(int streamId, boolean outFinished, @NotNull List<Header> alternating) {
        Intrinsics.checkNotNullParameter(alternating, "alternating");
        this.writer.headers(outFinished, streamId, alternating);
    }

    public final void writePing(boolean reply, int payload1, int payload2) {
        try {
            this.writer.ping(reply, payload1, payload2);
        } catch (IOException e) {
            ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
            close$okhttp(errorCode, errorCode, e);
        }
    }

    public final void writePingAndAwaitPong() {
        writePing();
        awaitPong();
    }

    public final void writeSynReset$okhttp(int streamId, @NotNull ErrorCode statusCode) {
        Intrinsics.checkNotNullParameter(statusCode, "statusCode");
        this.writer.rstStream(streamId, statusCode);
    }

    public final void writeSynResetLater$okhttp(int streamId, @NotNull ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        TaskQueue.execute$default(this.f3296x3db60231, this.connectionName + '[' + streamId + "] writeSynReset", 0L, false, new C0867x1dab7530(this, streamId, errorCode, 1), 6, null);
    }

    public final void writeWindowUpdateLater$okhttp(int streamId, long unacknowledgedBytesRead) {
        TaskQueue.execute$default(this.f3296x3db60231, this.connectionName + '[' + streamId + "] windowUpdate", 0L, false, new C0868x3fdda1e2(this, streamId, unacknowledgedBytesRead), 6, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004b A[Catch: all -> 0x0013, TRY_LEAVE, TryCatch #0 {all -> 0x0013, blocks: (B:6:0x0006, B:8:0x000d, B:9:0x0016, B:11:0x001a, B:13:0x002d, B:15:0x0035, B:19:0x0045, B:21:0x004b, B:36:0x0079, B:37:0x007e), top: B:5:0x0006, outer: #1 }] */
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Http2Stream m2612xfbe0c504(int i, List list, boolean z) {
        int i2;
        Http2Stream http2Stream;
        boolean z2;
        boolean z3 = !z;
        synchronized (this.writer) {
            try {
                synchronized (this) {
                    try {
                        if (this.nextStreamId > 1073741823) {
                            shutdown(ErrorCode.REFUSED_STREAM);
                        }
                        if (!this.f3294x34271fae) {
                            i2 = this.nextStreamId;
                            this.nextStreamId = i2 + 2;
                            http2Stream = new Http2Stream(i2, this, z3, false, null);
                            if (z && this.writeBytesTotal < this.writeBytesMaximum && http2Stream.getWriteBytesTotal() < http2Stream.getWriteBytesMaximum()) {
                                z2 = false;
                                if (http2Stream.isOpen()) {
                                    this.f3290x1378447b.put(Integer.valueOf(i2), http2Stream);
                                }
                            }
                            z2 = true;
                            if (http2Stream.isOpen()) {
                            }
                        } else {
                            throw new ConnectionShutdownException();
                        }
                    } finally {
                    }
                }
                if (i == 0) {
                    this.writer.headers(z3, i2, list);
                } else if (!this.client) {
                    this.writer.pushPromise(i, i2, list);
                } else {
                    throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z2) {
            this.writer.flush();
        }
        return http2Stream;
    }

    @JvmOverloads
    public final void start(boolean sendConnectionPreface) {
        if (sendConnectionPreface) {
            Http2Writer http2Writer = this.writer;
            http2Writer.connectionPreface();
            Settings settings = this.okHttpSettings;
            http2Writer.settings(settings);
            if (settings.getInitialWindowSize() != 65535) {
                http2Writer.windowUpdate(0, r0 - 65535);
            }
        }
        TaskQueue.execute$default(this.f3295x95f25580.newQueue(), this.connectionName, 0L, false, this.readerRunnable, 6, null);
    }

    public final void writePing() {
        synchronized (this) {
            this.f3304xad53da1a++;
        }
        writePing(false, 3, 1330343787);
    }
}
