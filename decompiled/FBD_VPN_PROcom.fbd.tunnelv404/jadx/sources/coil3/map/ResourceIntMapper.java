package coil3.map;

import android.content.res.Resources;
import androidx.annotation.DrawableRes;
import coil3.Uri;
import coil3.UriKt;
import coil3.request.Options;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J#\u0010\t\u001a\u0004\u0018\u00010\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcoil3/map/ResourceIntMapper;", "Lcoil3/map/Mapper;", "", "Lcoil3/Uri;", "<init>", "()V", "data", "Lcoil3/request/Options;", "options", "map", "(ILcoil3/request/Options;)Lcoil3/Uri;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ResourceIntMapper implements Mapper<Integer, Uri> {
    @Override // coil3.map.Mapper
    public /* bridge */ /* synthetic */ Uri map(Integer num, Options options) {
        return map(num.intValue(), options);
    }

    @Nullable
    public Uri map(@DrawableRes int data, @NotNull Options options) {
        try {
            if (options.getContext().getResources().getResourceEntryName(data) != null) {
                return UriKt.toUri$default("android.resource://" + options.getContext().getPackageName() + '/' + data, null, 1, null);
            }
        } catch (Resources.NotFoundException unused) {
        }
        return null;
    }
}
