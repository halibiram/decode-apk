package coil3.decode;

import coil3.content.UtilsKt;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSource;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u0000 \b2\u00020\u0001:\u0001\bJ\u001a\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcoil3/decode/ExifOrientationStrategy;", "", "supports", "", "mimeType", "", "source", "Lokio/BufferedSource;", "Companion", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public interface ExifOrientationStrategy {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = Companion.f517xfbe0c504;

    @JvmField
    @NotNull
    public static final ExifOrientationStrategy IGNORE;

    @JvmField
    @NotNull
    public static final ExifOrientationStrategy RESPECT_ALL;

    @JvmField
    @NotNull
    public static final ExifOrientationStrategy RESPECT_PERFORMANCE;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0001R\u0017\u0010\u0005\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0001R\u0017\u0010\u0006\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0001¨\u0006\u0007"}, d2 = {"Lcoil3/decode/ExifOrientationStrategy$Companion;", "", "Lcoil3/decode/ExifOrientationStrategy;", "IGNORE", "Lcoil3/decode/ExifOrientationStrategy;", "RESPECT_PERFORMANCE", "RESPECT_ALL", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public static final /* synthetic */ Companion f517xfbe0c504 = new Object();
    }

    static {
        final int i = 0;
        IGNORE = new ExifOrientationStrategy() { // from class: 뒤뒤듽딠뒼땻돨땅땨땄땜땧땄딜돳돝땰땡땁딹땦뒷뒋됩딟땪돷듐땧땝듸땡뒨뒷듻딨뒤듌두땃땫뒐듼둬뒤뎸돷둣땟도땧돳돠뎽딽듰땳됫됐돝돰땳땁땥딄땋땦땹돤뒛따땧땥돼든딄돵뎡딸돰땝디땠딝땱딐듬둔됴뒋땜땋딝둠딁뒛땍딠뒀딄딄됐됴딽디뎽딁땭돤딤돶땵듼땣땠땄뎹뒉딠땰땻딽땝딽됨딠뒘뒘딹둬
            @Override // coil3.decode.ExifOrientationStrategy
            public final boolean supports(String str, BufferedSource bufferedSource) {
                switch (i) {
                    case 0:
                        int i2 = AbstractC0724xed5979c5.f4624xfbe0c504;
                        return false;
                    case 1:
                        int i3 = AbstractC0724xed5979c5.f4624xfbe0c504;
                        if (str == null) {
                            return false;
                        }
                        if (!Intrinsics.areEqual(str, UtilsKt.MIME_TYPE_JPEG) && !Intrinsics.areEqual(str, UtilsKt.MIME_TYPE_WEBP) && !Intrinsics.areEqual(str, UtilsKt.MIME_TYPE_HEIC) && !Intrinsics.areEqual(str, UtilsKt.MIME_TYPE_HEIF)) {
                            return false;
                        }
                        return true;
                    default:
                        int i4 = AbstractC0724xed5979c5.f4624xfbe0c504;
                        return true;
                }
            }
        };
        final int i2 = 1;
        RESPECT_PERFORMANCE = new ExifOrientationStrategy() { // from class: 뒤뒤듽딠뒼땻돨땅땨땄땜땧땄딜돳돝땰땡땁딹땦뒷뒋됩딟땪돷듐땧땝듸땡뒨뒷듻딨뒤듌두땃땫뒐듼둬뒤뎸돷둣땟도땧돳돠뎽딽듰땳됫됐돝돰땳땁땥딄땋땦땹돤뒛따땧땥돼든딄돵뎡딸돰땝디땠딝땱딐듬둔됴뒋땜땋딝둠딁뒛땍딠뒀딄딄됐됴딽디뎽딁땭돤딤돶땵듼땣땠땄뎹뒉딠땰땻딽땝딽됨딠뒘뒘딹둬
            @Override // coil3.decode.ExifOrientationStrategy
            public final boolean supports(String str, BufferedSource bufferedSource) {
                switch (i2) {
                    case 0:
                        int i22 = AbstractC0724xed5979c5.f4624xfbe0c504;
                        return false;
                    case 1:
                        int i3 = AbstractC0724xed5979c5.f4624xfbe0c504;
                        if (str == null) {
                            return false;
                        }
                        if (!Intrinsics.areEqual(str, UtilsKt.MIME_TYPE_JPEG) && !Intrinsics.areEqual(str, UtilsKt.MIME_TYPE_WEBP) && !Intrinsics.areEqual(str, UtilsKt.MIME_TYPE_HEIC) && !Intrinsics.areEqual(str, UtilsKt.MIME_TYPE_HEIF)) {
                            return false;
                        }
                        return true;
                    default:
                        int i4 = AbstractC0724xed5979c5.f4624xfbe0c504;
                        return true;
                }
            }
        };
        final int i3 = 2;
        RESPECT_ALL = new ExifOrientationStrategy() { // from class: 뒤뒤듽딠뒼땻돨땅땨땄땜땧땄딜돳돝땰땡땁딹땦뒷뒋됩딟땪돷듐땧땝듸땡뒨뒷듻딨뒤듌두땃땫뒐듼둬뒤뎸돷둣땟도땧돳돠뎽딽듰땳됫됐돝돰땳땁땥딄땋땦땹돤뒛따땧땥돼든딄돵뎡딸돰땝디땠딝땱딐듬둔됴뒋땜땋딝둠딁뒛땍딠뒀딄딄됐됴딽디뎽딁땭돤딤돶땵듼땣땠땄뎹뒉딠땰땻딽땝딽됨딠뒘뒘딹둬
            @Override // coil3.decode.ExifOrientationStrategy
            public final boolean supports(String str, BufferedSource bufferedSource) {
                switch (i3) {
                    case 0:
                        int i22 = AbstractC0724xed5979c5.f4624xfbe0c504;
                        return false;
                    case 1:
                        int i32 = AbstractC0724xed5979c5.f4624xfbe0c504;
                        if (str == null) {
                            return false;
                        }
                        if (!Intrinsics.areEqual(str, UtilsKt.MIME_TYPE_JPEG) && !Intrinsics.areEqual(str, UtilsKt.MIME_TYPE_WEBP) && !Intrinsics.areEqual(str, UtilsKt.MIME_TYPE_HEIC) && !Intrinsics.areEqual(str, UtilsKt.MIME_TYPE_HEIF)) {
                            return false;
                        }
                        return true;
                    default:
                        int i4 = AbstractC0724xed5979c5.f4624xfbe0c504;
                        return true;
                }
            }
        };
    }

    boolean supports(@Nullable String mimeType, @NotNull BufferedSource source);
}
