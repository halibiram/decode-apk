package kotlin.time;

import com.tencent.mmkv.MMKV;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http.HttpStatusCodesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"kotlin/time/UnboundLocalDateTime$Companion", "", "Lkotlin/time/Instant;", "instant", "Lkotlin/time/뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨;", "fromInstant", "(Lkotlin/time/Instant;)Lkotlin/time/뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class UnboundLocalDateTime$Companion {
    public UnboundLocalDateTime$Companion(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @NotNull
    public final C0304x9738a56c fromInstant(@NotNull Instant instant) {
        long j;
        Intrinsics.checkNotNullParameter(instant, "instant");
        long epochSeconds = instant.getEpochSeconds();
        long j2 = epochSeconds / 86400;
        if ((epochSeconds ^ 86400) < 0 && j2 * 86400 != epochSeconds) {
            j2--;
        }
        long j3 = epochSeconds % 86400;
        int i = (int) (j3 + (86400 & (((j3 ^ 86400) & ((-j3) | j3)) >> 63)));
        long j4 = (j2 + 719528) - 60;
        if (j4 < 0) {
            long j5 = 146097;
            long j6 = ((j4 + 1) / j5) - 1;
            j = HttpStatusCodesKt.HTTP_BAD_REQUEST * j6;
            j4 += (-j6) * j5;
        } else {
            j = 0;
        }
        long j7 = HttpStatusCodesKt.HTTP_BAD_REQUEST;
        long j8 = ((j7 * j4) + 591) / 146097;
        long j9 = 365;
        long j10 = 4;
        long j11 = 100;
        long j12 = j4 - ((j8 / j7) + (((j8 / j10) + (j9 * j8)) - (j8 / j11)));
        if (j12 < 0) {
            j8--;
            j12 = j4 - ((j8 / j7) + (((j8 / j10) + (j9 * j8)) - (j8 / j11)));
        }
        int i2 = (int) j12;
        int i3 = ((i2 * 5) + 2) / 153;
        int i4 = ((i3 + 2) % 12) + 1;
        int i5 = (i2 - (((i3 * 306) + 5) / 10)) + 1;
        int i6 = (int) (j8 + j + (i3 / 10));
        int i7 = i / MMKV.ExpireInHour;
        int i8 = i - (i7 * MMKV.ExpireInHour);
        int i9 = i8 / 60;
        return new C0304x9738a56c(i6, i4, i5, i7, i9, i8 - (i9 * 60), instant.getNanosecondsOfSecond());
    }
}
