package coil3.fetch;

import coil3.ImageLoader;
import coil3.Uri;
import coil3.decode.DataSource;
import coil3.decode.ImageSourceKt;
import coil3.fetch.Fetcher;
import coil3.request.Options;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\u000bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bH\u0096@¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcoil3/fetch/DataUriFetcher;", "Lcoil3/fetch/Fetcher;", "Lcoil3/Uri;", "uri", "Lcoil3/request/Options;", "options", "<init>", "(Lcoil3/Uri;Lcoil3/request/Options;)V", "Lcoil3/fetch/FetchResult;", "fetch", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Factory", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDataUriFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataUriFetcher.kt\ncoil3/fetch/DataUriFetcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n1#2:61\n*E\n"})
/* loaded from: classes.dex */
public final class DataUriFetcher implements Fetcher {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Uri f608xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Options f609x3271d0aa;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\"\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, d2 = {"Lcoil3/fetch/DataUriFetcher$Factory;", "Lcoil3/fetch/Fetcher$Factory;", "Lcoil3/Uri;", "<init>", "()V", "create", "Lcoil3/fetch/Fetcher;", "data", "options", "Lcoil3/request/Options;", "imageLoader", "Lcoil3/ImageLoader;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Factory implements Fetcher.Factory<Uri> {
        @Override // coil3.fetch.Fetcher.Factory
        @Nullable
        public Fetcher create(@NotNull Uri data, @NotNull Options options, @NotNull ImageLoader imageLoader) {
            if (Intrinsics.areEqual(data.getScheme(), "data")) {
                return new DataUriFetcher(data, options);
            }
            return null;
        }
    }

    public DataUriFetcher(@NotNull Uri uri, @NotNull Options options) {
        this.f608xfbe0c504 = uri;
        this.f609x3271d0aa = options;
    }

    @Override // coil3.fetch.Fetcher
    @Nullable
    public Object fetch(@NotNull Continuation<? super FetchResult> continuation) {
        Uri uri = this.f608xfbe0c504;
        int indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) uri.getF492xfbe0c504(), ";base64,", 0, false, 6, (Object) null);
        if (indexOf$default != -1) {
            int indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) uri.getF492xfbe0c504(), ':', 0, false, 6, (Object) null);
            if (indexOf$default2 != -1) {
                String substring = uri.getF492xfbe0c504().substring(indexOf$default2 + 1, indexOf$default);
                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                byte[] decode$default = Base64.decode$default(Base64.INSTANCE, uri.getF492xfbe0c504(), indexOf$default + 8, 0, 4, (Object) null);
                Buffer buffer = new Buffer();
                buffer.write(decode$default);
                return new SourceFetchResult(ImageSourceKt.ImageSource$default(buffer, this.f609x3271d0aa.getFileSystem(), null, 4, null), substring, DataSource.MEMORY);
            }
            throw new IllegalStateException(("invalid data uri: " + uri).toString());
        }
        throw new IllegalStateException(("invalid data uri: " + uri).toString());
    }
}
