package okhttp3;

import androidx.browser.trusted.sharing.ShareTarget;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.CommonHttpUrl;
import okhttp3.internal.JvmHttpUrl;
import okhttp3.internal._UtilJvmKt;
import okio.Buffer;
import okio.BufferedSink;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001e\u001dB%\b\u0000\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\u000b\u001a\u00020\bH\u0007¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\b¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\b¢\u0006\u0004\b\u000f\u0010\u000eJ\u0015\u0010\u0010\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\b¢\u0006\u0004\b\u0010\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\b¢\u0006\u0004\b\u0011\u0010\u000eJ\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001b\u0010\u001cR\u0011\u0010\u000b\u001a\u00020\b8G¢\u0006\u0006\u001a\u0004\b\u000b\u0010\n¨\u0006\u001f"}, d2 = {"Lokhttp3/FormBody;", "Lokhttp3/RequestBody;", "", "", "encodedNames", "encodedValues", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "", "-deprecated_size", "()I", "size", "index", "encodedName", "(I)Ljava/lang/String;", "name", "encodedValue", "value", "Lokhttp3/MediaType;", "contentType", "()Lokhttp3/MediaType;", "", "contentLength", "()J", "Lokio/BufferedSink;", "sink", "", "writeTo", "(Lokio/BufferedSink;)V", "Companion", "Builder", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class FormBody extends RequestBody {

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final MediaType f2796x1378447b = MediaType.INSTANCE.get(ShareTarget.ENCODING_TYPE_URL_ENCODED);

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final List f2797xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final List f2798x3271d0aa;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0015\b\u0007\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\t\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\nJ\r\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lokhttp3/FormBody$Builder;", "", "Ljava/nio/charset/Charset;", "charset", "<init>", "(Ljava/nio/charset/Charset;)V", "", "name", "value", "add", "(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;", "addEncoded", "Lokhttp3/FormBody;", "build", "()Lokhttp3/FormBody;", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public final Charset f2799xfbe0c504;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
        public final ArrayList f2800x3271d0aa;

        /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
        public final ArrayList f2801x1378447b;

        /* JADX WARN: Multi-variable type inference failed */
        @JvmOverloads
        public Builder() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        @NotNull
        public final Builder add(@NotNull String name, @NotNull String value) {
            String canonicalizeWithCharset$okhttp;
            String canonicalizeWithCharset$okhttp2;
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            ArrayList arrayList = this.f2800x3271d0aa;
            JvmHttpUrl jvmHttpUrl = JvmHttpUrl.INSTANCE;
            canonicalizeWithCharset$okhttp = jvmHttpUrl.canonicalizeWithCharset$okhttp(name, (r23 & 1) != 0 ? 0 : 0, (r23 & 2) != 0 ? name.length() : 0, CommonHttpUrl.FORM_ENCODE_SET, (r23 & 8) != 0 ? false : false, (r23 & 16) != 0 ? false : false, (r23 & 32) != 0 ? false : false, (r23 & 64) != 0 ? false : false, (r23 & 128) != 0 ? null : this.f2799xfbe0c504);
            arrayList.add(canonicalizeWithCharset$okhttp);
            ArrayList arrayList2 = this.f2801x1378447b;
            canonicalizeWithCharset$okhttp2 = jvmHttpUrl.canonicalizeWithCharset$okhttp(value, (r23 & 1) != 0 ? 0 : 0, (r23 & 2) != 0 ? value.length() : 0, CommonHttpUrl.FORM_ENCODE_SET, (r23 & 8) != 0 ? false : false, (r23 & 16) != 0 ? false : false, (r23 & 32) != 0 ? false : false, (r23 & 64) != 0 ? false : false, (r23 & 128) != 0 ? null : this.f2799xfbe0c504);
            arrayList2.add(canonicalizeWithCharset$okhttp2);
            return this;
        }

        @NotNull
        public final Builder addEncoded(@NotNull String name, @NotNull String value) {
            String canonicalizeWithCharset$okhttp;
            String canonicalizeWithCharset$okhttp2;
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            ArrayList arrayList = this.f2800x3271d0aa;
            JvmHttpUrl jvmHttpUrl = JvmHttpUrl.INSTANCE;
            canonicalizeWithCharset$okhttp = jvmHttpUrl.canonicalizeWithCharset$okhttp(name, (r23 & 1) != 0 ? 0 : 0, (r23 & 2) != 0 ? name.length() : 0, CommonHttpUrl.FORM_ENCODE_SET, (r23 & 8) != 0 ? false : true, (r23 & 16) != 0 ? false : false, (r23 & 32) != 0 ? false : true, (r23 & 64) != 0 ? false : false, (r23 & 128) != 0 ? null : this.f2799xfbe0c504);
            arrayList.add(canonicalizeWithCharset$okhttp);
            ArrayList arrayList2 = this.f2801x1378447b;
            canonicalizeWithCharset$okhttp2 = jvmHttpUrl.canonicalizeWithCharset$okhttp(value, (r23 & 1) != 0 ? 0 : 0, (r23 & 2) != 0 ? value.length() : 0, CommonHttpUrl.FORM_ENCODE_SET, (r23 & 8) != 0 ? false : true, (r23 & 16) != 0 ? false : false, (r23 & 32) != 0 ? false : true, (r23 & 64) != 0 ? false : false, (r23 & 128) != 0 ? null : this.f2799xfbe0c504);
            arrayList2.add(canonicalizeWithCharset$okhttp2);
            return this;
        }

        @NotNull
        public final FormBody build() {
            return new FormBody(this.f2800x3271d0aa, this.f2801x1378447b);
        }

        @JvmOverloads
        public Builder(@Nullable Charset charset) {
            this.f2799xfbe0c504 = charset;
            this.f2800x3271d0aa = new ArrayList();
            this.f2801x1378447b = new ArrayList();
        }

        public /* synthetic */ Builder(Charset charset, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : charset);
        }
    }

    public FormBody(@NotNull List<String> encodedNames, @NotNull List<String> encodedValues) {
        Intrinsics.checkNotNullParameter(encodedNames, "encodedNames");
        Intrinsics.checkNotNullParameter(encodedValues, "encodedValues");
        this.f2797xfbe0c504 = _UtilJvmKt.toImmutableList(encodedNames);
        this.f2798x3271d0aa = _UtilJvmKt.toImmutableList(encodedValues);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "size", imports = {}))
    @JvmName(name = "-deprecated_size")
    /* renamed from: -deprecated_size, reason: not valid java name */
    public final int m2472deprecated_size() {
        return size();
    }

    @Override // okhttp3.RequestBody
    public long contentLength() {
        return m2473xfbe0c504(null, true);
    }

    @Override // okhttp3.RequestBody
    @NotNull
    /* renamed from: contentType */
    public MediaType getF2998xfbe0c504() {
        return f2796x1378447b;
    }

    @NotNull
    public final String encodedName(int index) {
        return (String) this.f2797xfbe0c504.get(index);
    }

    @NotNull
    public final String encodedValue(int index) {
        return (String) this.f2798x3271d0aa.get(index);
    }

    @NotNull
    public final String name(int index) {
        return CommonHttpUrl.percentDecode$okhttp$default(CommonHttpUrl.INSTANCE, encodedName(index), 0, 0, true, 3, null);
    }

    @JvmName(name = "size")
    public final int size() {
        return this.f2797xfbe0c504.size();
    }

    @NotNull
    public final String value(int index) {
        return CommonHttpUrl.percentDecode$okhttp$default(CommonHttpUrl.INSTANCE, encodedValue(index), 0, 0, true, 3, null);
    }

    @Override // okhttp3.RequestBody
    public void writeTo(@NotNull BufferedSink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        m2473xfbe0c504(sink, false);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final long m2473xfbe0c504(BufferedSink bufferedSink, boolean z) {
        Buffer buffer;
        if (z) {
            buffer = new Buffer();
        } else {
            Intrinsics.checkNotNull(bufferedSink);
            buffer = bufferedSink.getBuffer();
        }
        List list = this.f2797xfbe0c504;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                buffer.writeByte(38);
            }
            buffer.writeUtf8((String) list.get(i));
            buffer.writeByte(61);
            buffer.writeUtf8((String) this.f2798x3271d0aa.get(i));
        }
        if (z) {
            long size2 = buffer.size();
            buffer.clear();
            return size2;
        }
        return 0L;
    }
}
