package okhttp3.internal.http2;

import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0015\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0003J \u0010\t\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0086\u0002¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\u0018\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0086\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0006¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000b¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u0006¢\u0006\u0004\b\u0015\u0010\u0011J\u0015\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006¢\u0006\u0004\b\u0016\u0010\u000fJ\u0015\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006¢\u0006\u0004\b\u0017\u0010\u000fJ\u0015\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0000¢\u0006\u0004\b\u0019\u0010\u001aR\u0011\u0010\u001c\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0011R\u0011\u0010\u001e\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0011¨\u0006 "}, d2 = {"Lokhttp3/internal/http2/Settings;", "", "<init>", "()V", "", "clear", "", "id", "value", "set", "(II)Lokhttp3/internal/http2/Settings;", "", "isSet", "(I)Z", "get", "(I)I", "size", "()I", "defaultValue", "getEnablePush", "(Z)Z", "getMaxConcurrentStreams", "getMaxFrameSize", "getMaxHeaderListSize", "other", "merge", "(Lokhttp3/internal/http2/Settings;)V", "getHeaderTableSize", "headerTableSize", "getInitialWindowSize", "initialWindowSize", "Companion", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class Settings {
    public static final int COUNT = 10;
    public static final int DEFAULT_INITIAL_WINDOW_SIZE = 65535;
    public static final int ENABLE_PUSH = 2;
    public static final int HEADER_TABLE_SIZE = 1;
    public static final int INITIAL_WINDOW_SIZE = 7;
    public static final int MAX_CONCURRENT_STREAMS = 4;
    public static final int MAX_FRAME_SIZE = 5;
    public static final int MAX_HEADER_LIST_SIZE = 6;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public int f3381xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final int[] f3382x3271d0aa = new int[10];

    public final void clear() {
        this.f3381xfbe0c504 = 0;
        ArraysKt___ArraysJvmKt.fill$default(this.f3382x3271d0aa, 0, 0, 0, 6, (Object) null);
    }

    public final int get(int id) {
        return this.f3382x3271d0aa[id];
    }

    public final boolean getEnablePush(boolean defaultValue) {
        if ((this.f3381xfbe0c504 & 4) != 0) {
            if (this.f3382x3271d0aa[2] == 1) {
                return true;
            }
            return false;
        }
        return defaultValue;
    }

    public final int getHeaderTableSize() {
        if ((this.f3381xfbe0c504 & 2) != 0) {
            return this.f3382x3271d0aa[1];
        }
        return -1;
    }

    public final int getInitialWindowSize() {
        if ((this.f3381xfbe0c504 & 128) != 0) {
            return this.f3382x3271d0aa[7];
        }
        return 65535;
    }

    public final int getMaxConcurrentStreams() {
        if ((this.f3381xfbe0c504 & 16) != 0) {
            return this.f3382x3271d0aa[4];
        }
        return Integer.MAX_VALUE;
    }

    public final int getMaxFrameSize(int defaultValue) {
        if ((this.f3381xfbe0c504 & 32) != 0) {
            return this.f3382x3271d0aa[5];
        }
        return defaultValue;
    }

    public final int getMaxHeaderListSize(int defaultValue) {
        if ((this.f3381xfbe0c504 & 64) != 0) {
            return this.f3382x3271d0aa[6];
        }
        return defaultValue;
    }

    public final boolean isSet(int id) {
        if (((1 << id) & this.f3381xfbe0c504) != 0) {
            return true;
        }
        return false;
    }

    public final void merge(@NotNull Settings other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (int i = 0; i < 10; i++) {
            if (other.isSet(i)) {
                set(i, other.get(i));
            }
        }
    }

    @NotNull
    public final Settings set(int id, int value) {
        if (id >= 0) {
            int[] iArr = this.f3382x3271d0aa;
            if (id < iArr.length) {
                this.f3381xfbe0c504 = (1 << id) | this.f3381xfbe0c504;
                iArr[id] = value;
            }
        }
        return this;
    }

    public final int size() {
        return Integer.bitCount(this.f3381xfbe0c504);
    }
}
