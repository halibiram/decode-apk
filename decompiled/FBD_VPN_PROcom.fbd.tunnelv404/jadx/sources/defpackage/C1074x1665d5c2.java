package defpackage;

import java.io.IOException;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.ws.RealWebSocket;

/* renamed from: 땃드땵둥드땃듔뎰따딁뒈둘따돰땤땳땜딝땹돰딻둬딁땟도뒐돶돷듬땦땋땦딠뒨돠딎뒤땹든됨뒼듐될땩둠되득듟돼딠돵드돶듸땻돷딄땯뒷땫땩땫된땫둘뒼둣뒘딐딌돵듬뒤둑뒨딹뒛딐딅뒼둘둔돵뎠딞듨듸땄땤돨딜따땣딜땐뒘돰듻득땪딸땍뎰뒬뎡딽딽도땥뒋땯땔뒈땟듻듰드됴땮두돵돨돛둥뒼딎딞됴뒘들, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1074x1665d5c2 extends Task {

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final /* synthetic */ RealWebSocket f5360x9738a56c;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C1074x1665d5c2(RealWebSocket realWebSocket) {
        super(r0.toString(), false, 2, null);
        String str;
        this.f5360x9738a56c = realWebSocket;
        StringBuilder sb = new StringBuilder();
        str = realWebSocket.f3475x8c6fc18a;
        sb.append(str);
        sb.append(" writer");
    }

    @Override // okhttp3.internal.concurrent.Task
    public final long runOnce() {
        try {
            if (this.f5360x9738a56c.writeOneFrame$okhttp()) {
                return 0L;
            }
            return -1L;
        } catch (IOException e) {
            RealWebSocket.failWebSocket$default(this.f5360x9738a56c, e, null, true, 2, null);
            return -1L;
        }
    }
}
