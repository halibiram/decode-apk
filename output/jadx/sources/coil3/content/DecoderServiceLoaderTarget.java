package coil3.content;

import coil3.annotation.InternalCoilApi;
import coil3.decode.Decoder;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bg\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcoil3/util/DecoderServiceLoaderTarget;", "", "factory", "Lcoil3/decode/Decoder$Factory;", "priority", "", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@InternalCoilApi
/* loaded from: classes.dex */
public interface DecoderServiceLoaderTarget {
    @Nullable
    Decoder.Factory factory();

    int priority();
}
