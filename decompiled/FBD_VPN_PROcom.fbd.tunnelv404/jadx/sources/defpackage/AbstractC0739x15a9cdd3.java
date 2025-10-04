package defpackage;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.FilePathComponents;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

/* renamed from: 뒬둥뎰땧뒤됫땥둡돴땐되땁듔뎨땍뒾땜뒷뒤두듔뎹듰딸됨딻돸듬딨뒉뒷뎹땤딝도뎰됫된땐딟뒙뒬된뒀돶땐땦뒈땵뒾땁땁듟둬땄듐돛땍따땸뒋뒤딜뒨뒬돶땩도돶둣듨땀땍딽딃뎬딌뎹뒀돴땫땡딐땱뎨뒻따됩딀땋됨딽딝두땧땯돤돤뒨뒬땯뒘땦땸딅땻뎡딃딸듐됫딸땹듨땰뒼뒻뒷뎨됴땟땁듼땩딜땧딄둠땄땬, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0739x15a9cdd3 {
    @NotNull
    public static final File getRoot(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return new File(getRootName(file));
    }

    @NotNull
    public static final String getRootName(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        String path = file.getPath();
        Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
        String path2 = file.getPath();
        Intrinsics.checkNotNullExpressionValue(path2, "getPath(...)");
        String substring = path.substring(0, m3320xfbe0c504(path2));
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    public static final boolean isRooted(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        String path = file.getPath();
        Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
        if (m3320xfbe0c504(path) > 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final File subPath(@NotNull File file, int i, int i2) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return toComponents(file).subPath(i, i2);
    }

    @NotNull
    public static final FilePathComponents toComponents(@NotNull File file) {
        List list;
        Intrinsics.checkNotNullParameter(file, "<this>");
        String path = file.getPath();
        Intrinsics.checkNotNull(path);
        int m3320xfbe0c504 = m3320xfbe0c504(path);
        String substring = path.substring(0, m3320xfbe0c504);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        String substring2 = path.substring(m3320xfbe0c504);
        Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
        if (substring2.length() == 0) {
            list = CollectionsKt__CollectionsKt.emptyList();
        } else {
            List split$default = StringsKt__StringsKt.split$default((CharSequence) substring2, new char[]{File.separatorChar}, false, 0, 6, (Object) null);
            ArrayList arrayList = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(split$default, 10));
            Iterator it = split$default.iterator();
            while (it.hasNext()) {
                arrayList.add(new File((String) it.next()));
            }
            list = arrayList;
        }
        return new FilePathComponents(new File(substring), list);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final int m3320xfbe0c504(String str) {
        int indexOf$default;
        char c = File.separatorChar;
        int indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) str, c, 0, false, 4, (Object) null);
        if (indexOf$default2 == 0) {
            if (str.length() <= 1 || str.charAt(1) != c || (indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, c, 2, false, 4, (Object) null)) < 0) {
                return 1;
            }
            int indexOf$default3 = StringsKt__StringsKt.indexOf$default((CharSequence) str, c, indexOf$default + 1, false, 4, (Object) null);
            if (indexOf$default3 >= 0) {
                return indexOf$default3 + 1;
            }
            return str.length();
        }
        if (indexOf$default2 > 0 && str.charAt(indexOf$default2 - 1) == ':') {
            return indexOf$default2 + 1;
        }
        if (indexOf$default2 != -1 || !StringsKt__StringsKt.endsWith$default((CharSequence) str, ':', false, 2, (Object) null)) {
            return 0;
        }
        return str.length();
    }
}
