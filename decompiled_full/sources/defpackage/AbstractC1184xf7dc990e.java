package defpackage;

import java.io.InputStream;
import java.io.OutputStream;
import kotlin.SinceKotlin;
import kotlin.io.encoding.Base64;
import kotlin.io.encoding.C0292xfbe0c504;
import kotlin.io.encoding.ExperimentalEncodingApi;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* renamed from: 땤든땝뎰땐돳땤땲뒛듸됫땣땭돝됴땩둔듰딠둬땔됨뒛딨둠뒉땝둑딨땣뒝뒝땍돛땯땅득뒋뎨둠딨도듌둠될땁됐땨돵땲뒐둣뒝듐듸땫돰땭뒉딽땀딜땩득듰딽뎨된됐됐돷딠땹둥둬딤듌땲딸듼둑뒵돶땫딀땠뎨돤땬뒼딀디뒹땟땟땧듟딜됐뎠딞딐될딽딅돝둘둣둥돰됨됩뎻딁땠딜땜땜든딌돼딨땪뎹딃딅뒾드딎딄, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC1184xf7dc990e {
    @ExperimentalEncodingApi
    @SinceKotlin(version = "1.8")
    @NotNull
    public static final InputStream decodingWith(@NotNull InputStream inputStream, @NotNull Base64 base64) {
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        Intrinsics.checkNotNullParameter(base64, "base64");
        return new C0656x878e0782(inputStream, base64);
    }

    @ExperimentalEncodingApi
    @SinceKotlin(version = "1.8")
    @NotNull
    public static final OutputStream encodingWith(@NotNull OutputStream outputStream, @NotNull Base64 base64) {
        Intrinsics.checkNotNullParameter(outputStream, "<this>");
        Intrinsics.checkNotNullParameter(base64, "base64");
        return new C0292xfbe0c504(outputStream, base64);
    }
}
