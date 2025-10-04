package okhttp3;

import defpackage.AbstractC0362x4440ab85;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: okhttp3.뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0335x9738a56c implements Dns {
    @Override // okhttp3.Dns
    public final List lookup(String hostname) {
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        try {
            InetAddress[] allByName = InetAddress.getAllByName(hostname);
            Intrinsics.checkNotNullExpressionValue(allByName, "getAllByName(...)");
            return ArraysKt___ArraysKt.toList(allByName);
        } catch (NullPointerException e) {
            UnknownHostException unknownHostException = new UnknownHostException(AbstractC0362x4440ab85.m2952x5ac5058d("Broken system behaviour for dns lookup of ", hostname));
            unknownHostException.initCause(e);
            throw unknownHostException;
        }
    }
}
