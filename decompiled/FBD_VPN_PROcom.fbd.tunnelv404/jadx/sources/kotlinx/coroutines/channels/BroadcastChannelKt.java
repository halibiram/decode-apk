package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a#\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {ExifInterface.LONGITUDE_EAST, "", "capacity", "Lkotlinx/coroutines/channels/BroadcastChannel;", "BroadcastChannel", "(I)Lkotlinx/coroutines/channels/BroadcastChannel;", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BroadcastChannelKt {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Symbol f1809xfbe0c504 = new Symbol("NO_ELEMENT");

    @Deprecated(level = DeprecationLevel.ERROR, message = "BroadcastChannel is deprecated in the favour of SharedFlow and StateFlow, and is no longer supported")
    @ObsoleteCoroutinesApi
    @NotNull
    public static final <E> BroadcastChannel<E> BroadcastChannel(int i) {
        if (i != -2) {
            if (i != -1) {
                if (i != 0) {
                    if (i != Integer.MAX_VALUE) {
                        return new BroadcastChannelImpl(i);
                    }
                    throw new IllegalArgumentException("Unsupported UNLIMITED capacity for BroadcastChannel");
                }
                throw new IllegalArgumentException("Unsupported 0 capacity for BroadcastChannel");
            }
            return new ConflatedBroadcastChannel();
        }
        return new BroadcastChannelImpl(Channel.INSTANCE.getCHANNEL_DEFAULT_CAPACITY$kotlinx_coroutines_core());
    }

    public static final /* synthetic */ Symbol access$getNO_ELEMENT$p() {
        return f1809xfbe0c504;
    }
}
