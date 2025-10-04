package okhttp3.internal.idn;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.AbstractC0576x6ced6b;
import defpackage.AbstractC1197x89633db9;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlin.ranges.IntProgression;
import kotlin.text.StringsKt__StringsKt;
import okio.Buffer;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001J\u0017\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0005R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\r\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lokhttp3/internal/idn/Punycode;", "", "", TypedValues.Custom.S_STRING, "encode", "(Ljava/lang/String;)Ljava/lang/String;", "decode", "Lokio/ByteString;", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lokio/ByteString;", "getPREFIX", "()Lokio/ByteString;", "PREFIX", "PREFIX_STRING", "Ljava/lang/String;", "getPREFIX_STRING", "()Ljava/lang/String;", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPunycode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Punycode.kt\nokhttp3/internal/idn/Punycode\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,312:1\n2310#2,14:313\n*S KotlinDebug\n*F\n+ 1 Punycode.kt\nokhttp3/internal/idn/Punycode\n*L\n107#1:313,14\n*E\n"})
/* loaded from: classes3.dex */
public final class Punycode {

    @NotNull
    public static final Punycode INSTANCE = new Object();

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public static final ByteString PREFIX = ByteString.INSTANCE.encodeUtf8("xn--");

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static int m2619xfbe0c504(int i, int i2, boolean z) {
        int i3;
        if (z) {
            i3 = i / TypedValues.TransitionType.TYPE_DURATION;
        } else {
            i3 = i / 2;
        }
        int i4 = (i3 / i2) + i3;
        int i5 = 0;
        while (i4 > 455) {
            i4 /= 35;
            i5 += 36;
        }
        return ((i4 * 36) / (i4 + 38)) + i5;
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static int m2620x3271d0aa(int i) {
        if (i < 26) {
            return i + 97;
        }
        if (i < 36) {
            return i + 22;
        }
        throw new IllegalStateException(("unexpected digit: " + i).toString());
    }

    @Nullable
    public final String decode(@NotNull String string) {
        int i;
        int i2;
        boolean z;
        int i3;
        int i4;
        Intrinsics.checkNotNullParameter(string, "string");
        int length = string.length();
        Buffer buffer = new Buffer();
        for (int i5 = 0; i5 < length; i5 = i + 1) {
            int indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) string, '.', i5, false, 4, (Object) null);
            if (indexOf$default == -1) {
                i = length;
            } else {
                i = indexOf$default;
            }
            if (!AbstractC1197x89633db9.regionMatches(string, i5, "xn--", 0, 4, true)) {
                buffer.writeUtf8(string, i5, i);
            } else {
                int i6 = i5 + 4;
                ArrayList arrayList = new ArrayList();
                int lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) string, '-', i, false, 4, (Object) null);
                char c = 'A';
                char c2 = 'a';
                char c3 = '[';
                if (lastIndexOf$default >= i6) {
                    while (i6 < lastIndexOf$default) {
                        int i7 = i6 + 1;
                        char charAt = string.charAt(i6);
                        if (('a' <= charAt && charAt < '{') || (('A' <= charAt && charAt < '[') || (('0' <= charAt && charAt < ':') || charAt == '-'))) {
                            arrayList.add(Integer.valueOf(charAt));
                            i6 = i7;
                        } else {
                            return null;
                        }
                    }
                    i6++;
                }
                int i8 = 128;
                int i9 = 72;
                int i10 = 0;
                while (i6 < i) {
                    IntProgression step = AbstractC0296x1378447b.step(AbstractC0296x1378447b.until(36, Integer.MAX_VALUE), 36);
                    int first = step.getFirst();
                    int last = step.getLast();
                    int step2 = step.getStep();
                    if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
                        i2 = i10;
                        int i11 = 1;
                        while (i6 != i) {
                            int i12 = i6 + 1;
                            char charAt2 = string.charAt(i6);
                            if (c2 <= charAt2 && charAt2 < '{') {
                                i3 = charAt2 - 'a';
                            } else if (c <= charAt2 && charAt2 < c3) {
                                i3 = charAt2 - 'A';
                            } else {
                                if ('0' > charAt2 || charAt2 >= ':') {
                                    return null;
                                }
                                i3 = charAt2 - 22;
                            }
                            int i13 = i11;
                            int i14 = i3 * i13;
                            int i15 = i2;
                            if (i15 <= Integer.MAX_VALUE - i14) {
                                i2 = i15 + i14;
                                if (first <= i9) {
                                    i4 = 1;
                                } else if (first >= i9 + 26) {
                                    i4 = 26;
                                } else {
                                    i4 = first - i9;
                                }
                                if (i3 >= i4) {
                                    int i16 = 36 - i4;
                                    if (i13 <= Integer.MAX_VALUE / i16) {
                                        i11 = i13 * i16;
                                        if (first != last) {
                                            first += step2;
                                            i6 = i12;
                                            c = 'A';
                                            c2 = 'a';
                                            c3 = '[';
                                        }
                                    } else {
                                        return null;
                                    }
                                }
                                i6 = i12;
                            } else {
                                return null;
                            }
                        }
                        return null;
                    }
                    i2 = i10;
                    int i17 = i2 - i10;
                    int size = arrayList.size() + 1;
                    if (i10 == 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    i9 = m2619xfbe0c504(i17, size, z);
                    int size2 = i2 / (arrayList.size() + 1);
                    if (i8 <= Integer.MAX_VALUE - size2) {
                        i8 += size2;
                        int size3 = i2 % (arrayList.size() + 1);
                        if (i8 > 1114111) {
                            return null;
                        }
                        arrayList.add(size3, Integer.valueOf(i8));
                        i10 = size3 + 1;
                        c = 'A';
                        c2 = 'a';
                        c3 = '[';
                    } else {
                        return null;
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    buffer.writeUtf8CodePoint(((Number) it.next()).intValue());
                }
            }
            if (i >= length) {
                break;
            }
            buffer.writeByte(46);
        }
        return buffer.readUtf8();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10, types: [char] */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v17, types: [int] */
    @Nullable
    public final String encode(@NotNull String string) {
        int i;
        boolean z;
        int i2;
        char c;
        Intrinsics.checkNotNullParameter(string, "string");
        int length = string.length();
        Buffer buffer = new Buffer();
        int i3 = 0;
        while (i3 < length) {
            int indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) string, '.', i3, false, 4, (Object) null);
            if (indexOf$default == -1) {
                indexOf$default = length;
            }
            int i4 = i3;
            while (true) {
                if (i4 < indexOf$default) {
                    int i5 = 128;
                    if (string.charAt(i4) >= 128) {
                        buffer.write(PREFIX);
                        ArrayList arrayList = new ArrayList();
                        while (i3 < indexOf$default) {
                            int charAt = string.charAt(i3);
                            if (AbstractC0576x6ced6b.isSurrogate(charAt)) {
                                int i6 = i3 + 1;
                                if (i6 < indexOf$default) {
                                    c = string.charAt(i6);
                                } else {
                                    c = 0;
                                }
                                if (!Character.isLowSurrogate(charAt) && Character.isLowSurrogate(c)) {
                                    charAt = (((charAt & 1023) << 10) | (c & 1023)) + 65536;
                                    i3 = i6;
                                } else {
                                    charAt = 63;
                                }
                            }
                            arrayList.add(Integer.valueOf(charAt));
                            i3++;
                        }
                        Iterator it = arrayList.iterator();
                        int i7 = 0;
                        while (it.hasNext()) {
                            int intValue = ((Number) it.next()).intValue();
                            if (intValue < 128) {
                                buffer.writeByte(intValue);
                                i7++;
                            }
                        }
                        if (i7 > 0) {
                            buffer.writeByte(45);
                        }
                        int i8 = 72;
                        int i9 = i7;
                        int i10 = 0;
                        while (i9 < arrayList.size()) {
                            Iterator it2 = arrayList.iterator();
                            if (it2.hasNext()) {
                                Object next = it2.next();
                                int i11 = Integer.MAX_VALUE;
                                if (it2.hasNext()) {
                                    int intValue2 = ((Number) next).intValue();
                                    if (intValue2 < i5) {
                                        intValue2 = Integer.MAX_VALUE;
                                    }
                                    do {
                                        Object next2 = it2.next();
                                        int intValue3 = ((Number) next2).intValue();
                                        if (intValue3 < i5) {
                                            intValue3 = Integer.MAX_VALUE;
                                        }
                                        if (intValue2 > intValue3) {
                                            intValue2 = intValue3;
                                            next = next2;
                                        }
                                    } while (it2.hasNext());
                                }
                                int intValue4 = ((Number) next).intValue();
                                int i12 = (i9 + 1) * (intValue4 - i5);
                                if (i10 <= Integer.MAX_VALUE - i12) {
                                    int i13 = i10 + i12;
                                    Iterator it3 = arrayList.iterator();
                                    while (it3.hasNext()) {
                                        int intValue5 = ((Number) it3.next()).intValue();
                                        if (intValue5 < intValue4) {
                                            if (i13 == i11) {
                                                return null;
                                            }
                                            i13++;
                                        } else if (intValue5 == intValue4) {
                                            IntProgression step = AbstractC0296x1378447b.step(AbstractC0296x1378447b.until(36, i11), 36);
                                            int first = step.getFirst();
                                            int last = step.getLast();
                                            int step2 = step.getStep();
                                            if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
                                                i = i13;
                                                while (true) {
                                                    if (first <= i8) {
                                                        i2 = 1;
                                                    } else if (first >= i8 + 26) {
                                                        i2 = 26;
                                                    } else {
                                                        i2 = first - i8;
                                                    }
                                                    if (i < i2) {
                                                        break;
                                                    }
                                                    int i14 = i - i2;
                                                    int i15 = 36 - i2;
                                                    buffer.writeByte(m2620x3271d0aa((i14 % i15) + i2));
                                                    i = i14 / i15;
                                                    if (first == last) {
                                                        break;
                                                    }
                                                    first += step2;
                                                }
                                            } else {
                                                i = i13;
                                            }
                                            buffer.writeByte(m2620x3271d0aa(i));
                                            int i16 = i9 + 1;
                                            if (i9 == i7) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                            i9 = i16;
                                            i8 = m2619xfbe0c504(i13, i16, z);
                                            i13 = 0;
                                            i11 = Integer.MAX_VALUE;
                                        }
                                    }
                                    i10 = i13 + 1;
                                    i5 = intValue4 + 1;
                                } else {
                                    return null;
                                }
                            } else {
                                throw new NoSuchElementException();
                            }
                        }
                    } else {
                        i4++;
                    }
                } else {
                    buffer.writeUtf8(string, i3, indexOf$default);
                    break;
                }
            }
            if (indexOf$default >= length) {
                break;
            }
            buffer.writeByte(46);
            i3 = indexOf$default + 1;
        }
        return buffer.readUtf8();
    }

    @NotNull
    public final ByteString getPREFIX() {
        return PREFIX;
    }

    @NotNull
    public final String getPREFIX_STRING() {
        return "xn--";
    }
}
