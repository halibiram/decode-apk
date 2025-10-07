package coil3.map;

import android.net.Uri;
import coil3.Uri_androidKt;
import coil3.request.Options;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"Lcoil3/map/AndroidUriMapper;", "Lcoil3/map/Mapper;", "Landroid/net/Uri;", "Lcoil3/Uri;", "<init>", "()V", "map", "data", "options", "Lcoil3/request/Options;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidUriMapper implements Mapper<Uri, coil3.Uri> {
    @Override // coil3.map.Mapper
    @NotNull
    public coil3.Uri map(@NotNull Uri data, @NotNull Options options) {
        return Uri_androidKt.toCoilUri(data);
    }
}
