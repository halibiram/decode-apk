package kotlin.enums;

import androidx.exifinterface.media.ExifInterface;
import defpackage.C0713xde667944;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\u001a!\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0010\b\u0000\u0010\u0002\u0018\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0087\b\u001a2\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0001\"\u000e\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00032\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00040\u00070\u0006H\u0001\u001a1\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0001\"\u000e\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0007H\u0001¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"enumEntries", "Lkotlin/enums/EnumEntries;", ExifInterface.GPS_DIRECTION_TRUE, "", ExifInterface.LONGITUDE_EAST, "entriesProvider", "Lkotlin/Function0;", "", "entries", "([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class EnumEntriesKt {
    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "2.0")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final /* synthetic */ <T extends Enum<T>> EnumEntries<T> enumEntries() {
        throw new NotImplementedError(null, 1, 0 == true ? 1 : 0);
    }

    @SinceKotlin(version = "1.8")
    @PublishedApi
    @NotNull
    public static final <E extends Enum<E>> EnumEntries<E> enumEntries(@NotNull Function0<E[]> entriesProvider) {
        Intrinsics.checkNotNullParameter(entriesProvider, "entriesProvider");
        return new C0713xde667944(entriesProvider.invoke());
    }

    @SinceKotlin(version = "1.8")
    @PublishedApi
    @NotNull
    public static final <E extends Enum<E>> EnumEntries<E> enumEntries(@NotNull E[] entries) {
        Intrinsics.checkNotNullParameter(entries, "entries");
        return new C0713xde667944(entries);
    }
}
