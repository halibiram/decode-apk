package com.google.android.gms.common.server.response;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import kotlin.text.Typography;
import okio.internal.Buffer;
import org.spongycastle.util.Strings;

@ShowFirstParty
@KeepForSdk
/* loaded from: classes2.dex */
public class FastParser<T extends FastJsonResponse> {
    private static final char[] zaa = {'u', 'l', 'l'};
    private static final char[] zab = {'r', 'u', 'e'};
    private static final char[] zac = {'r', 'u', 'e', Typography.quote};
    private static final char[] zad = {'a', 'l', 's', 'e'};
    private static final char[] zae = {'a', 'l', 's', 'e', Typography.quote};
    private static final char[] zaf = {'\n'};
    private static final zai<Integer> zag = new zaa();
    private static final zai<Long> zah = new zab();
    private static final zai<Float> zai = new zac();
    private static final zai<Double> zaj = new zad();
    private static final zai<Boolean> zak = new zae();
    private static final zai<String> zal = new zaf();
    private static final zai<BigInteger> zam = new zag();
    private static final zai<BigDecimal> zan = new zah();
    private final char[] zao = new char[1];
    private final char[] zap = new char[32];
    private final char[] zaq = new char[1024];
    private final StringBuilder zar = new StringBuilder(32);
    private final StringBuilder zas = new StringBuilder(1024);
    private final Stack<Integer> zat = new Stack<>();

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes2.dex */
    public static class ParseException extends Exception {
        public ParseException(@NonNull String str) {
            super(str);
        }

        public ParseException(@NonNull String str, @NonNull Throwable th) {
            super(new ObfuscatedString(new long[]{383333845128313538L, 1579923166999735464L, 5135801266984295055L, -936286047860269297L, -4615645959079890571L}).toString(), th);
        }

        public ParseException(@NonNull Throwable th) {
            super(th);
        }
    }

    private static final String zaA(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, @Nullable char[] cArr2) {
        sb.setLength(0);
        bufferedReader.mark(cArr.length);
        boolean z = false;
        boolean z2 = false;
        loop0: while (true) {
            int read = bufferedReader.read(cArr);
            if (read != -1) {
                for (int i = 0; i < read; i++) {
                    char c = cArr[i];
                    if (Character.isISOControl(c)) {
                        if (cArr2 == null) {
                            break loop0;
                        }
                        for (int i2 = 0; i2 <= 0; i2++) {
                            if (cArr2[i2] != c) {
                            }
                        }
                        break loop0;
                    }
                    if (c == '\"') {
                        if (!z2) {
                            sb.append(cArr, 0, i);
                            bufferedReader.reset();
                            bufferedReader.skip(i + 1);
                            if (z) {
                                return JsonUtils.unescapeString(sb.toString());
                            }
                            return sb.toString();
                        }
                    } else if (c == '\\') {
                        z2 = !z2;
                        z = true;
                    }
                    z2 = false;
                }
                sb.append(cArr, 0, read);
                bufferedReader.mark(cArr.length);
            } else {
                throw new ParseException(new ObfuscatedString(new long[]{-2838303451197412215L, 7760426586425055834L, 5957046850995458581L, 933838787902149097L, -2785975080292348496L, 6260845617524952640L}).toString());
            }
        }
        throw new ParseException(new ObfuscatedString(new long[]{911565533108944750L, 2543519317452947439L, 5866061563829249713L, 4901801493813035575L, 3546116878406977759L, 1229222318521480845L, -752606974148614590L, 8294169648221297074L}).toString());
    }

    private final char zai(BufferedReader bufferedReader) {
        if (bufferedReader.read(this.zao) == -1) {
            return (char) 0;
        }
        while (Character.isWhitespace(this.zao[0])) {
            if (bufferedReader.read(this.zao) == -1) {
                return (char) 0;
            }
        }
        return this.zao[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final double zaj(BufferedReader bufferedReader) {
        int zam2 = zam(bufferedReader, this.zaq);
        if (zam2 == 0) {
            return 0.0d;
        }
        return Double.parseDouble(new String(this.zaq, 0, zam2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float zak(BufferedReader bufferedReader) {
        int zam2 = zam(bufferedReader, this.zaq);
        if (zam2 == 0) {
            return 0.0f;
        }
        return Float.parseFloat(new String(this.zaq, 0, zam2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int zal(BufferedReader bufferedReader) {
        int i;
        int i2;
        int i3;
        int i4;
        int zam2 = zam(bufferedReader, this.zaq);
        if (zam2 == 0) {
            return 0;
        }
        char[] cArr = this.zaq;
        if (zam2 > 0) {
            char c = cArr[0];
            if (c == '-') {
                i = Integer.MIN_VALUE;
            } else {
                i = -2147483647;
            }
            if (c == '-') {
                i2 = 1;
            } else {
                i2 = 0;
            }
            if (i2 < zam2) {
                i3 = i2 + 1;
                int digit = Character.digit(cArr[i2], 10);
                if (digit >= 0) {
                    i4 = -digit;
                } else {
                    throw new ParseException(new ObfuscatedString(new long[]{6973838287941584910L, -7829768992253764289L, -4778369857153401175L, 5907746273749488517L, 1635210362680212571L}).toString());
                }
            } else {
                i3 = i2;
                i4 = 0;
            }
            while (i3 < zam2) {
                int i5 = i3 + 1;
                int digit2 = Character.digit(cArr[i3], 10);
                if (digit2 >= 0) {
                    if (i4 >= -214748364) {
                        int i6 = i4 * 10;
                        if (i6 >= i + digit2) {
                            i4 = i6 - digit2;
                            i3 = i5;
                        } else {
                            throw new ParseException(new ObfuscatedString(new long[]{4871515658254135056L, -2985697457716262579L, 1384157379853790147L}).toString());
                        }
                    } else {
                        throw new ParseException(new ObfuscatedString(new long[]{1334280450567445408L, 970037198000701824L, 5841393340885429553L}).toString());
                    }
                } else {
                    throw new ParseException(new ObfuscatedString(new long[]{-5926921715216016520L, 3879118613128109169L, 5011127719973387117L, -6133521982020208279L, -7942015866222318830L}).toString());
                }
            }
            if (i2 != 0) {
                if (i3 <= 1) {
                    throw new ParseException(new ObfuscatedString(new long[]{-3006661384091293703L, -2732985009681251152L, -1114678256566095146L, 6819676053184977114L}).toString());
                }
                return i4;
            }
            return -i4;
        }
        throw new ParseException(new ObfuscatedString(new long[]{-8665372603810537027L, -3572905836911950461L, 8486716152429622641L, -3123850881599245639L}).toString());
    }

    private final int zam(BufferedReader bufferedReader, char[] cArr) {
        int i;
        char zai2 = zai(bufferedReader);
        if (zai2 != 0) {
            if (zai2 != ',') {
                if (zai2 == 'n') {
                    zax(bufferedReader, zaa);
                    return 0;
                }
                bufferedReader.mark(1024);
                if (zai2 == '\"') {
                    i = 0;
                    boolean z = false;
                    while (i < 1024 && bufferedReader.read(cArr, i, 1) != -1) {
                        char c = cArr[i];
                        if (!Character.isISOControl(c)) {
                            if (c == '\"') {
                                if (!z) {
                                    bufferedReader.reset();
                                    bufferedReader.skip(1 + i);
                                    return i;
                                }
                            } else if (c == '\\') {
                                z = !z;
                                i++;
                            }
                            z = false;
                            i++;
                        } else {
                            throw new ParseException(new ObfuscatedString(new long[]{5132106764286115660L, 8842330487968276592L, -18078054793474200L, 5834107484340918100L, 3988335534975867745L, -5006545166795547123L, 5400256529636520804L, 5447881544243265909L}).toString());
                        }
                    }
                } else {
                    cArr[0] = zai2;
                    i = 1;
                    while (i < 1024 && bufferedReader.read(cArr, i, 1) != -1) {
                        char c2 = cArr[i];
                        if (c2 != '}' && c2 != ',' && !Character.isWhitespace(c2) && cArr[i] != ']') {
                            i++;
                        } else {
                            bufferedReader.reset();
                            bufferedReader.skip((-1) + i);
                            cArr[i] = 0;
                            return i;
                        }
                    }
                }
                if (i == 1024) {
                    throw new ParseException(new ObfuscatedString(new long[]{-2438991443475482190L, 5143745689165731984L, -6027834614757939988L, -6595653129554116048L}).toString());
                }
                throw new ParseException(new ObfuscatedString(new long[]{-5421021819650024670L, -386932214775972713L, 3566754958093681874L}).toString());
            }
            throw new ParseException(new ObfuscatedString(new long[]{6400589785486915894L, 5806576294848039005L, -4724563140999188833L}).toString());
        }
        throw new ParseException(new ObfuscatedString(new long[]{3368591471716600535L, 1790563836631500307L, 111256967292988792L}).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zan(BufferedReader bufferedReader) {
        long j;
        long j2;
        int i;
        int zam2 = zam(bufferedReader, this.zaq);
        if (zam2 == 0) {
            return 0L;
        }
        char[] cArr = this.zaq;
        if (zam2 > 0) {
            int i2 = 0;
            char c = cArr[0];
            if (c == '-') {
                j = Long.MIN_VALUE;
            } else {
                j = -9223372036854775807L;
            }
            if (c == '-') {
                i2 = 1;
            }
            int i3 = 10;
            if (i2 < zam2) {
                i = i2 + 1;
                int digit = Character.digit(cArr[i2], 10);
                if (digit >= 0) {
                    j2 = -digit;
                } else {
                    throw new ParseException(new ObfuscatedString(new long[]{6518846748482999138L, 1543393978236379599L, -3786746488546159238L, 2907222778085913817L, 177006220276902733L}).toString());
                }
            } else {
                j2 = 0;
                i = i2;
            }
            while (i < zam2) {
                int i4 = i + 1;
                int digit2 = Character.digit(cArr[i], i3);
                if (digit2 >= 0) {
                    if (j2 >= Buffer.OVERFLOW_ZONE) {
                        long j3 = j2 * 10;
                        long j4 = digit2;
                        if (j3 >= j + j4) {
                            j2 = j3 - j4;
                            i = i4;
                            i3 = 10;
                        } else {
                            throw new ParseException(new ObfuscatedString(new long[]{-261114817162273394L, -347057425935181376L, 543262824697163574L}).toString());
                        }
                    } else {
                        throw new ParseException(new ObfuscatedString(new long[]{-7670188814566290933L, -9214790997384945602L, -2618497678039182717L}).toString());
                    }
                } else {
                    throw new ParseException(new ObfuscatedString(new long[]{3087828413054580898L, 8263826523252027774L, 8271796432492840395L, 655201758377057274L, 2611248890719842963L}).toString());
                }
            }
            if (i2 != 0) {
                if (i <= 1) {
                    throw new ParseException(new ObfuscatedString(new long[]{4043825843835188127L, 8174804225873844250L, -1790964266948313783L, -1989833170363172643L}).toString());
                }
                return j2;
            }
            return -j2;
        }
        throw new ParseException(new ObfuscatedString(new long[]{-1908070121186969146L, -332572691369801871L, 7670004129198868043L, 7646724461202311461L}).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public final String zao(BufferedReader bufferedReader) {
        return zap(bufferedReader, this.zap, this.zar, null);
    }

    @Nullable
    private final String zap(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, @Nullable char[] cArr2) {
        char zai2 = zai(bufferedReader);
        if (zai2 != '\"') {
            if (zai2 == 'n') {
                zax(bufferedReader, zaa);
                return null;
            }
            throw new ParseException(new ObfuscatedString(new long[]{1144719145757481786L, 502517452707380565L, 7326049875879500126L}).toString());
        }
        return zaA(bufferedReader, cArr, sb, cArr2);
    }

    @Nullable
    private final String zaq(BufferedReader bufferedReader) {
        this.zat.push(2);
        char zai2 = zai(bufferedReader);
        if (zai2 != '\"') {
            if (zai2 != ']') {
                if (zai2 == '}') {
                    zaw(2);
                    return null;
                }
                StringBuilder sb = new StringBuilder(19);
                sb.append(new ObfuscatedString(new long[]{-367562753043150291L, 6003454614901722461L, -343838541208303212L, 5041068453445108900L}).toString());
                sb.append(zai2);
                throw new ParseException(sb.toString());
            }
            zaw(2);
            zaw(1);
            zaw(5);
            return null;
        }
        this.zat.push(3);
        String zaA = zaA(bufferedReader, this.zap, this.zar, null);
        zaw(3);
        if (zai(bufferedReader) == ':') {
            return zaA;
        }
        throw new ParseException(new ObfuscatedString(new long[]{-338078253702415600L, 6341927215638822780L, -4429682173379911936L, -5821364873340892397L, -7758734456130540459L}).toString());
    }

    @Nullable
    private final String zar(BufferedReader bufferedReader) {
        bufferedReader.mark(1024);
        char zai2 = zai(bufferedReader);
        if (zai2 != '\"') {
            if (zai2 != ',') {
                if (zai2 != '[') {
                    if (zai2 != '{') {
                        bufferedReader.reset();
                        zam(bufferedReader, this.zaq);
                    } else {
                        this.zat.push(1);
                        bufferedReader.mark(32);
                        char zai3 = zai(bufferedReader);
                        if (zai3 == '}') {
                            zaw(1);
                        } else if (zai3 == '\"') {
                            bufferedReader.reset();
                            zaq(bufferedReader);
                            do {
                            } while (zar(bufferedReader) != null);
                            zaw(1);
                        } else {
                            StringBuilder sb = new StringBuilder(18);
                            sb.append(new ObfuscatedString(new long[]{-7171627716225966546L, 4196474106817645908L, 7021535669860333079L, -7066220733122954545L}).toString());
                            sb.append(zai3);
                            throw new ParseException(sb.toString());
                        }
                    }
                } else {
                    this.zat.push(5);
                    bufferedReader.mark(32);
                    if (zai(bufferedReader) == ']') {
                        zaw(5);
                    } else {
                        bufferedReader.reset();
                        int i = 1;
                        boolean z = false;
                        loop1: while (true) {
                            boolean z2 = false;
                            while (i > 0) {
                                char zai4 = zai(bufferedReader);
                                if (zai4 != 0) {
                                    if (!Character.isISOControl(zai4)) {
                                        if (zai4 == '\"') {
                                            if (!z2) {
                                                z = !z;
                                            }
                                            zai4 = Typography.quote;
                                        }
                                        if (zai4 == '[') {
                                            if (!z) {
                                                i++;
                                            }
                                            zai4 = '[';
                                        }
                                        if (zai4 == ']' && !z) {
                                            i--;
                                        }
                                        if (zai4 == '\\' && z) {
                                            z2 = !z2;
                                        }
                                    } else {
                                        throw new ParseException(new ObfuscatedString(new long[]{6211776292265282803L, -3398205096250198207L, 7962563702386687115L, 8600037180351034896L, 1852150162122459878L, -5639396508109945812L, 454515692616983031L}).toString());
                                    }
                                } else {
                                    throw new ParseException(new ObfuscatedString(new long[]{-7197288175766412813L, 1304730083096375038L, 4198511424054278459L, -4782979513744177365L, -2683997473101099048L, -2772408540919607849L}).toString());
                                }
                            }
                            zaw(5);
                            break loop1;
                        }
                    }
                }
            } else {
                throw new ParseException(new ObfuscatedString(new long[]{-3688627057841678925L, 8245393154339664781L, -4776367183526993464L}).toString());
            }
        } else {
            if (bufferedReader.read(this.zao) != -1) {
                char c = this.zao[0];
                boolean z3 = false;
                do {
                    if (c == '\"') {
                        if (z3) {
                            c = Typography.quote;
                            z3 = true;
                        }
                    }
                    if (c == '\\') {
                        z3 = !z3;
                    } else {
                        z3 = false;
                    }
                    if (bufferedReader.read(this.zao) != -1) {
                        c = this.zao[0];
                    } else {
                        throw new ParseException(new ObfuscatedString(new long[]{3888867563698827931L, -8831762507707923071L, 4566770369324995006L, -8014318293912149193L, 8601335146381636137L, 2044360547913465962L}).toString());
                    }
                } while (!Character.isISOControl(c));
                throw new ParseException(new ObfuscatedString(new long[]{556373614191759428L, 2882787386011671348L, -4853844894309335320L, -6574608732689299667L, -4347915445316699215L, 7050027505480521253L, 1085543477593606376L, -2831713852502952584L}).toString());
            }
            throw new ParseException(new ObfuscatedString(new long[]{2144910342578372165L, -6811931902549598501L, 7201681459806324591L, -4564949071876865226L, 3068252228496561104L, -8396017939727138916L}).toString());
        }
        char zai5 = zai(bufferedReader);
        if (zai5 != ',') {
            if (zai5 == '}') {
                zaw(2);
                return null;
            }
            StringBuilder sb2 = new StringBuilder(18);
            sb2.append(new ObfuscatedString(new long[]{-122435026647627458L, -4170788586299257216L, -2131812448101453921L, -7180738723224624446L}).toString());
            sb2.append(zai5);
            throw new ParseException(sb2.toString());
        }
        zaw(2);
        return zaq(bufferedReader);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public final BigDecimal zas(BufferedReader bufferedReader) {
        int zam2 = zam(bufferedReader, this.zaq);
        if (zam2 == 0) {
            return null;
        }
        return new BigDecimal(new String(this.zaq, 0, zam2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public final BigInteger zat(BufferedReader bufferedReader) {
        int zam2 = zam(bufferedReader, this.zaq);
        if (zam2 == 0) {
            return null;
        }
        return new BigInteger(new String(this.zaq, 0, zam2));
    }

    @Nullable
    private final <O> ArrayList<O> zau(BufferedReader bufferedReader, zai<O> zaiVar) {
        char zai2 = zai(bufferedReader);
        if (zai2 == 'n') {
            zax(bufferedReader, zaa);
            return null;
        }
        if (zai2 == '[') {
            this.zat.push(5);
            ArrayList<O> arrayList = new ArrayList<>();
            while (true) {
                bufferedReader.mark(1024);
                char zai3 = zai(bufferedReader);
                if (zai3 != 0) {
                    if (zai3 != ',') {
                        if (zai3 != ']') {
                            bufferedReader.reset();
                            arrayList.add(zaiVar.zaa(this, bufferedReader));
                        } else {
                            zaw(5);
                            return arrayList;
                        }
                    }
                } else {
                    throw new ParseException(new ObfuscatedString(new long[]{-7897062792564927923L, -7069550080992729595L, -4766531724875728197L}).toString());
                }
            }
        } else {
            throw new ParseException(new ObfuscatedString(new long[]{-3679620573106202433L, -6192236365364005070L, 522343932627528146L, 4114209132138188831L}).toString());
        }
    }

    @Nullable
    private final <T extends FastJsonResponse> ArrayList<T> zav(BufferedReader bufferedReader, FastJsonResponse.Field<?, ?> field) {
        Strings.StringListImpl stringListImpl = (ArrayList<T>) new ArrayList();
        char zai2 = zai(bufferedReader);
        if (zai2 != ']') {
            if (zai2 != 'n') {
                if (zai2 == '{') {
                    this.zat.push(1);
                    while (true) {
                        try {
                            FastJsonResponse zad2 = field.zad();
                            if (zaz(bufferedReader, zad2)) {
                                stringListImpl.add((Strings.StringListImpl) zad2);
                                char zai3 = zai(bufferedReader);
                                if (zai3 != ',') {
                                    if (zai3 == ']') {
                                        zaw(5);
                                        return stringListImpl;
                                    }
                                    StringBuilder sb = new StringBuilder(19);
                                    sb.append(new ObfuscatedString(new long[]{3176785962878327860L, 6646046266089570601L, -721378748383263502L, -7748199601116965085L}).toString());
                                    sb.append(zai3);
                                    throw new ParseException(sb.toString());
                                }
                                if (zai(bufferedReader) == '{') {
                                    this.zat.push(1);
                                } else {
                                    throw new ParseException(new ObfuscatedString(new long[]{4079476865177120358L, 1210685395824270349L, -7921762767228808497L, -5368714781085462010L, -4235053346231503674L, -9067283376491295107L}).toString());
                                }
                            } else {
                                return stringListImpl;
                            }
                        } catch (IllegalAccessException e) {
                            throw new ParseException(new ObfuscatedString(new long[]{8066442882825785417L, 5876463941005146958L, 3180277880200517084L, 8343744823894772049L, -8237857854022203613L}).toString(), e);
                        } catch (InstantiationException e2) {
                            throw new ParseException(new ObfuscatedString(new long[]{-8327063541161603974L, -5113934959737987559L, -3670252315169360511L, -4237401026250847356L, -3740131780951674787L}).toString(), e2);
                        }
                    }
                } else {
                    StringBuilder sb2 = new StringBuilder(19);
                    sb2.append(new ObfuscatedString(new long[]{-9056479828202112204L, 473451585988045375L, 7865507956754400465L, 8012206495138898707L}).toString());
                    sb2.append(zai2);
                    throw new ParseException(sb2.toString());
                }
            } else {
                zax(bufferedReader, zaa);
                zaw(5);
                return null;
            }
        } else {
            zaw(5);
            return stringListImpl;
        }
    }

    private final void zaw(int i) {
        if (!this.zat.isEmpty()) {
            int intValue = this.zat.pop().intValue();
            if (intValue == i) {
                return;
            }
            StringBuilder sb = new StringBuilder(46);
            sb.append(new ObfuscatedString(new long[]{3255123430945017380L, -7018887297726612723L, -1859461725685386294L}).toString());
            sb.append(i);
            throw new ParseException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{1727899875058887753L, 8971074930628374824L, 6699275664039829772L}), sb, intValue));
        }
        StringBuilder sb2 = new StringBuilder(46);
        sb2.append(new ObfuscatedString(new long[]{-6471887105423294605L, 6800695755412431003L, 2422931988366124201L}).toString());
        sb2.append(i);
        throw new ParseException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1404642239971427789L, 3096504229373280779L, -7391888383104634096L, -3214436742612464091L}), sb2));
    }

    private final void zax(BufferedReader bufferedReader, char[] cArr) {
        int i = 0;
        while (true) {
            int length = cArr.length;
            if (i < length) {
                int read = bufferedReader.read(this.zap, 0, length - i);
                if (read != -1) {
                    for (int i2 = 0; i2 < read; i2++) {
                        if (cArr[i2 + i] != this.zap[i2]) {
                            throw new ParseException(new ObfuscatedString(new long[]{1780174306109986751L, 2366130800713898861L, -9134940304669956418L, -2940711361144573663L}).toString());
                        }
                    }
                    i += read;
                } else {
                    throw new ParseException(new ObfuscatedString(new long[]{4975829165330173380L, 8455099518063565479L, 1945178025432089098L}).toString());
                }
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zay(BufferedReader bufferedReader, boolean z) {
        char[] cArr;
        char[] cArr2;
        char zai2 = zai(bufferedReader);
        if (zai2 != '\"') {
            if (zai2 != 'f') {
                if (zai2 != 'n') {
                    if (zai2 == 't') {
                        if (z) {
                            cArr2 = zac;
                        } else {
                            cArr2 = zab;
                        }
                        zax(bufferedReader, cArr2);
                        return true;
                    }
                    StringBuilder sb = new StringBuilder(19);
                    sb.append(new ObfuscatedString(new long[]{-6120271725793409691L, 3919087917614260818L, 4343204942857928211L, -8753694751913700713L}).toString());
                    sb.append(zai2);
                    throw new ParseException(sb.toString());
                }
                zax(bufferedReader, zaa);
                return false;
            }
            if (z) {
                cArr = zae;
            } else {
                cArr = zad;
            }
            zax(bufferedReader, cArr);
            return false;
        }
        if (!z) {
            return zay(bufferedReader, true);
        }
        throw new ParseException(new ObfuscatedString(new long[]{-8021132263810459949L, -427404190595221451L, 6514869573928586543L, 454355377501979871L, -1996251771001583730L}).toString());
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x003a. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0327  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final boolean zaz(BufferedReader bufferedReader, FastJsonResponse fastJsonResponse) {
        Map<String, FastJsonResponse.Field<?, ?>> map;
        HashMap hashMap;
        String str;
        String str2;
        char zai2;
        int i = 4;
        int i2 = 5;
        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = fastJsonResponse.getFieldMappings();
        String zaq = zaq(bufferedReader);
        if (zaq != null) {
            while (zaq != null) {
                FastJsonResponse.Field<?, ?> field = fieldMappings.get(zaq);
                if (field == null) {
                    zaq = zar(bufferedReader);
                } else {
                    this.zat.push(Integer.valueOf(i));
                    int i3 = field.zaa;
                    switch (i3) {
                        case 0:
                            map = fieldMappings;
                            if (field.zab) {
                                fastJsonResponse.zav(field, zau(bufferedReader, zag));
                            } else {
                                fastJsonResponse.zau(field, zal(bufferedReader));
                            }
                            zaw(4);
                            zaw(2);
                            zai2 = zai(bufferedReader);
                            if (zai2 == ',') {
                                if (zai2 == '}') {
                                    fieldMappings = map;
                                    zaq = null;
                                } else {
                                    StringBuilder sb = new StringBuilder(55);
                                    sb.append(new ObfuscatedString(new long[]{8672364814215101243L, 3280693660368519376L, 919944297117114013L, 1826091423512922832L, -2753980766937090050L, 5082643639384530389L, -6687812176173283616L, 7311783980557642294L}).toString());
                                    sb.append(zai2);
                                    throw new ParseException(sb.toString());
                                }
                            } else {
                                zaq = zaq(bufferedReader);
                                fieldMappings = map;
                            }
                            i = 4;
                            i2 = 5;
                            break;
                        case 1:
                            map = fieldMappings;
                            if (field.zab) {
                                fastJsonResponse.zag(field, zau(bufferedReader, zam));
                            } else {
                                fastJsonResponse.zae(field, zat(bufferedReader));
                            }
                            zaw(4);
                            zaw(2);
                            zai2 = zai(bufferedReader);
                            if (zai2 == ',') {
                            }
                            i = 4;
                            i2 = 5;
                            break;
                        case 2:
                            map = fieldMappings;
                            if (field.zab) {
                                fastJsonResponse.zay(field, zau(bufferedReader, zah));
                            } else {
                                fastJsonResponse.zax(field, zan(bufferedReader));
                            }
                            zaw(4);
                            zaw(2);
                            zai2 = zai(bufferedReader);
                            if (zai2 == ',') {
                            }
                            i = 4;
                            i2 = 5;
                            break;
                        case 3:
                            map = fieldMappings;
                            if (field.zab) {
                                fastJsonResponse.zas(field, zau(bufferedReader, zai));
                            } else {
                                fastJsonResponse.zaq(field, zak(bufferedReader));
                            }
                            zaw(4);
                            zaw(2);
                            zai2 = zai(bufferedReader);
                            if (zai2 == ',') {
                            }
                            i = 4;
                            i2 = 5;
                            break;
                        case 4:
                            if (field.zab) {
                                fastJsonResponse.zao(field, zau(bufferedReader, zaj));
                                map = fieldMappings;
                                zaw(4);
                                zaw(2);
                                zai2 = zai(bufferedReader);
                                if (zai2 == ',') {
                                }
                                i = 4;
                                i2 = 5;
                                break;
                            } else {
                                map = fieldMappings;
                                fastJsonResponse.zam(field, zaj(bufferedReader));
                                zaw(4);
                                zaw(2);
                                zai2 = zai(bufferedReader);
                                if (zai2 == ',') {
                                }
                                i = 4;
                                i2 = 5;
                            }
                            break;
                        case 5:
                            if (field.zab) {
                                fastJsonResponse.zac(field, zau(bufferedReader, zan));
                            } else {
                                fastJsonResponse.zaa(field, zas(bufferedReader));
                            }
                            map = fieldMappings;
                            zaw(4);
                            zaw(2);
                            zai2 = zai(bufferedReader);
                            if (zai2 == ',') {
                            }
                            i = 4;
                            i2 = 5;
                            break;
                        case 6:
                            if (field.zab) {
                                fastJsonResponse.zaj(field, zau(bufferedReader, zak));
                            } else {
                                fastJsonResponse.zai(field, zay(bufferedReader, false));
                            }
                            map = fieldMappings;
                            zaw(4);
                            zaw(2);
                            zai2 = zai(bufferedReader);
                            if (zai2 == ',') {
                            }
                            i = 4;
                            i2 = 5;
                            break;
                        case 7:
                            if (field.zab) {
                                fastJsonResponse.zaC(field, zau(bufferedReader, zal));
                            } else {
                                fastJsonResponse.zaA(field, zao(bufferedReader));
                            }
                            map = fieldMappings;
                            zaw(4);
                            zaw(2);
                            zai2 = zai(bufferedReader);
                            if (zai2 == ',') {
                            }
                            i = 4;
                            i2 = 5;
                            break;
                        case 8:
                            fastJsonResponse.zal(field, Base64Utils.decode(zap(bufferedReader, this.zaq, this.zas, zaf)));
                            map = fieldMappings;
                            zaw(4);
                            zaw(2);
                            zai2 = zai(bufferedReader);
                            if (zai2 == ',') {
                            }
                            i = 4;
                            i2 = 5;
                            break;
                        case 9:
                            fastJsonResponse.zal(field, Base64Utils.decodeUrlSafe(zap(bufferedReader, this.zaq, this.zas, zaf)));
                            map = fieldMappings;
                            zaw(4);
                            zaw(2);
                            zai2 = zai(bufferedReader);
                            if (zai2 == ',') {
                            }
                            i = 4;
                            i2 = 5;
                            break;
                        case 10:
                            char zai3 = zai(bufferedReader);
                            if (zai3 == 'n') {
                                zax(bufferedReader, zaa);
                                hashMap = null;
                            } else if (zai3 == '{') {
                                this.zat.push(1);
                                hashMap = new HashMap();
                                while (true) {
                                    char zai4 = zai(bufferedReader);
                                    if (zai4 != 0) {
                                        if (zai4 != '\"') {
                                            if (zai4 == '}') {
                                                zaw(1);
                                            }
                                        } else {
                                            String zaA = zaA(bufferedReader, this.zap, this.zar, null);
                                            if (zai(bufferedReader) != ':') {
                                                String valueOf = String.valueOf(zaA);
                                                long[] jArr = new long[i2];
                                                // fill-array-data instruction
                                                jArr[0] = 7441848654566165209L;
                                                jArr[1] = -7464318775542299047L;
                                                jArr[2] = -6002153560284460255L;
                                                jArr[3] = 1330414120974636675L;
                                                jArr[4] = 5043247420551657051L;
                                                String obfuscatedString = new ObfuscatedString(jArr).toString();
                                                if (valueOf.length() != 0) {
                                                    str = obfuscatedString.concat(valueOf);
                                                } else {
                                                    str = new String(obfuscatedString);
                                                }
                                                throw new ParseException(str);
                                            }
                                            if (zai(bufferedReader) != '\"') {
                                                String valueOf2 = String.valueOf(zaA);
                                                long[] jArr2 = new long[i2];
                                                // fill-array-data instruction
                                                jArr2[0] = 6604005134492156823L;
                                                jArr2[1] = -4660881635500233582L;
                                                jArr2[2] = -7708669223065198267L;
                                                jArr2[3] = -1120869965596203859L;
                                                jArr2[4] = 1655874088138694068L;
                                                String obfuscatedString2 = new ObfuscatedString(jArr2).toString();
                                                if (valueOf2.length() != 0) {
                                                    str2 = obfuscatedString2.concat(valueOf2);
                                                } else {
                                                    str2 = new String(obfuscatedString2);
                                                }
                                                throw new ParseException(str2);
                                            }
                                            hashMap.put(zaA, zaA(bufferedReader, this.zap, this.zar, null));
                                            char zai5 = zai(bufferedReader);
                                            if (zai5 != ',') {
                                                if (zai5 == '}') {
                                                    zaw(1);
                                                } else {
                                                    StringBuilder sb2 = new StringBuilder(48);
                                                    sb2.append(new ObfuscatedString(new long[]{-7827755508579193618L, 1429431174492734573L, -73957292284743830L, -5702442606273408039L, 3328953069008225993L, 1093951026146942317L, -3845360315795739655L}).toString());
                                                    sb2.append(zai5);
                                                    throw new ParseException(sb2.toString());
                                                }
                                            }
                                        }
                                        map = fieldMappings;
                                        zaw(4);
                                        zaw(2);
                                        zai2 = zai(bufferedReader);
                                        if (zai2 == ',') {
                                        }
                                        i = 4;
                                        i2 = 5;
                                        break;
                                    } else {
                                        throw new ParseException(new ObfuscatedString(new long[]{1998022965775126622L, -6839142490489566874L, 7329488322237327891L}).toString());
                                    }
                                }
                            } else {
                                long[] jArr3 = new long[i2];
                                // fill-array-data instruction
                                jArr3[0] = 1739078770298252009L;
                                jArr3[1] = 7130739938917389397L;
                                jArr3[2] = 3421305258865852634L;
                                jArr3[3] = -7539854014641956028L;
                                jArr3[4] = -832757462908314567L;
                                throw new ParseException(new ObfuscatedString(jArr3).toString());
                            }
                            fastJsonResponse.zaB(field, hashMap);
                            map = fieldMappings;
                            zaw(4);
                            zaw(2);
                            zai2 = zai(bufferedReader);
                            if (zai2 == ',') {
                            }
                            i = 4;
                            i2 = 5;
                            break;
                        case 11:
                            if (field.zab) {
                                char zai6 = zai(bufferedReader);
                                if (zai6 == 'n') {
                                    zax(bufferedReader, zaa);
                                    fastJsonResponse.addConcreteTypeArrayInternal(field, field.zae, null);
                                } else {
                                    this.zat.push(Integer.valueOf(i2));
                                    if (zai6 == '[') {
                                        fastJsonResponse.addConcreteTypeArrayInternal(field, field.zae, zav(bufferedReader, field));
                                    } else {
                                        long[] jArr4 = new long[i];
                                        // fill-array-data instruction
                                        jArr4[0] = -115977395449605093L;
                                        jArr4[1] = 67200799037097598L;
                                        jArr4[2] = -5389431309852607842L;
                                        jArr4[3] = 4495012928903323142L;
                                        throw new ParseException(new ObfuscatedString(jArr4).toString());
                                    }
                                }
                            } else {
                                char zai7 = zai(bufferedReader);
                                if (zai7 == 'n') {
                                    zax(bufferedReader, zaa);
                                    fastJsonResponse.addConcreteTypeInternal(field, field.zae, null);
                                } else {
                                    this.zat.push(1);
                                    if (zai7 == '{') {
                                        try {
                                            FastJsonResponse zad2 = field.zad();
                                            zaz(bufferedReader, zad2);
                                            fastJsonResponse.addConcreteTypeInternal(field, field.zae, zad2);
                                        } catch (IllegalAccessException e) {
                                            long[] jArr5 = new long[i2];
                                            // fill-array-data instruction
                                            jArr5[0] = -1856902301560436276L;
                                            jArr5[1] = 5339842741320208016L;
                                            jArr5[2] = -2083594118058189663L;
                                            jArr5[3] = 7012118939395855940L;
                                            jArr5[4] = -3364036296437534365L;
                                            throw new ParseException(new ObfuscatedString(jArr5).toString(), e);
                                        } catch (InstantiationException e2) {
                                            long[] jArr6 = new long[i2];
                                            // fill-array-data instruction
                                            jArr6[0] = -5651174528190007065L;
                                            jArr6[1] = 7005702802926481748L;
                                            jArr6[2] = 7368975517186729000L;
                                            jArr6[3] = 6087441188452314540L;
                                            jArr6[4] = 2520467794274085937L;
                                            throw new ParseException(new ObfuscatedString(jArr6).toString(), e2);
                                        }
                                    } else {
                                        long[] jArr7 = new long[i];
                                        // fill-array-data instruction
                                        jArr7[0] = 1219989580445657204L;
                                        jArr7[1] = 6308850200996527538L;
                                        jArr7[2] = 7107366851261577665L;
                                        jArr7[3] = -8338902878804836051L;
                                        throw new ParseException(new ObfuscatedString(jArr7).toString());
                                    }
                                }
                            }
                            map = fieldMappings;
                            zaw(4);
                            zaw(2);
                            zai2 = zai(bufferedReader);
                            if (zai2 == ',') {
                            }
                            i = 4;
                            i2 = 5;
                            break;
                        default:
                            long[] jArr8 = new long[i];
                            // fill-array-data instruction
                            jArr8[0] = -5554774428495402625L;
                            jArr8[1] = 5364292392511256381L;
                            jArr8[2] = 635469354194308806L;
                            jArr8[3] = -5106816538888180262L;
                            throw new ParseException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(jArr8), new StringBuilder(30), i3));
                    }
                }
            }
            zaw(1);
            return true;
        }
        zaw(1);
        return false;
    }

    @KeepForSdk
    public void parse(@NonNull InputStream inputStream, @NonNull T t) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), 1024);
        try {
            try {
                this.zat.push(0);
                char zai2 = zai(bufferedReader);
                if (zai2 != 0) {
                    if (zai2 != '[') {
                        if (zai2 == '{') {
                            this.zat.push(1);
                            zaz(bufferedReader, t);
                        } else {
                            StringBuilder sb = new StringBuilder(19);
                            sb.append(new ObfuscatedString(new long[]{5199864481396309762L, 2912749073900967056L, -1129126724952197678L, 7851310758829138912L}).toString());
                            sb.append(zai2);
                            throw new ParseException(sb.toString());
                        }
                    } else {
                        this.zat.push(5);
                        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = t.getFieldMappings();
                        if (fieldMappings.size() == 1) {
                            FastJsonResponse.Field<?, ?> value = fieldMappings.entrySet().iterator().next().getValue();
                            t.addConcreteTypeArrayInternal(value, value.zae, zav(bufferedReader, value));
                        } else {
                            throw new ParseException(new ObfuscatedString(new long[]{-2917844909605756115L, -631355953233296434L, -1567860866592321510L, -7114401640695430898L, -3757765159991387849L, -3580262719277391571L, -1885163703422097893L, 1398903468654209224L}).toString());
                        }
                    }
                    zaw(0);
                    try {
                        bufferedReader.close();
                        return;
                    } catch (IOException unused) {
                        new ObfuscatedString(new long[]{-3248940889731394435L, 8610695238972350992L, 6696988108031665928L}).toString();
                        new ObfuscatedString(new long[]{3567152834528957403L, -2377308141069783877L, 1779973711789817084L, -8325277576285960954L, -5173766128006746432L, -5263712872691269016L}).toString();
                        return;
                    }
                }
                throw new ParseException(new ObfuscatedString(new long[]{-44420212478444163L, -2578727281838430724L, 693704053107030528L}).toString());
            } catch (IOException e) {
                throw new ParseException(e);
            }
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (IOException unused2) {
                new ObfuscatedString(new long[]{-3343561850320892497L, 241862130957715142L, -2957720194779344975L}).toString();
                new ObfuscatedString(new long[]{5769601725218042336L, -6000057101659967759L, -2370166427464075763L, 6788756601041475107L, 4689573894117226182L, 1774636973674788972L}).toString();
            }
            throw th;
        }
    }
}
