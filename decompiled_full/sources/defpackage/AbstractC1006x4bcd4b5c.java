package defpackage;

import kotlin.ExperimentalStdlibApi;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;

/* renamed from: 딤둘땭되땠땸됨됴딸뒬뒙뒙땩둠돷들뒝딀딄딜뎬될뒨듰들돠땁뒼될땸돨딟돵뎹돛뒼돸둣듔둣딽뎻듔됩땦땭딌딤뒬땫듻도뎻돨땨딠뒐돳땮땦땵딄뎨땟딞들돤딽딄뒘땳딃된디뒈뒤뒻땮디듻땱돠됫뒈돠뎡땟돰돤땭듔땧돴되땧됩뒼뎹땭둠땟딻둔뎬뎨돷땐드땭돰돸뒷뒻딀둘뒾딸땟됐딞듐딤듬뒉듨딟뒤둡듻땩, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC1006x4bcd4b5c extends AbstractC1312xe0b2b7ff {
    @SinceKotlin(version = "1.6")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final byte rotateLeft(byte b, int i) {
        int i2 = i & 7;
        return (byte) (((b & 255) >>> (8 - i2)) | (b << i2));
    }

    @SinceKotlin(version = "1.6")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final byte rotateRight(byte b, int i) {
        int i2 = i & 7;
        return (byte) (((b & 255) >>> i2) | (b << (8 - i2)));
    }

    @SinceKotlin(version = "1.6")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final short rotateLeft(short s, int i) {
        int i2 = i & 15;
        return (short) (((s & 65535) >>> (16 - i2)) | (s << i2));
    }

    @SinceKotlin(version = "1.6")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final short rotateRight(short s, int i) {
        int i2 = i & 15;
        return (short) (((s & 65535) >>> i2) | (s << (16 - i2)));
    }
}
