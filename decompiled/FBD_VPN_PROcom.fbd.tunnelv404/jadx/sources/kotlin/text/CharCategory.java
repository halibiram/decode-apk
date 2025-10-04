package kotlin.text;

import defpackage.AbstractC0749x8313616e;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b%\b\u0086\u0081\u0002\u0018\u0000 \u00132\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0013J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0086\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1¨\u00062"}, d2 = {"Lkotlin/text/CharCategory;", "", "", "char", "", "contains", "(C)Z", "", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "I", "getValue", "()I", "value", "", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Ljava/lang/String;", "getCode", "()Ljava/lang/String;", "code", "Companion", "UNASSIGNED", "UPPERCASE_LETTER", "LOWERCASE_LETTER", "TITLECASE_LETTER", "MODIFIER_LETTER", "OTHER_LETTER", "NON_SPACING_MARK", "ENCLOSING_MARK", "COMBINING_SPACING_MARK", "DECIMAL_DIGIT_NUMBER", "LETTER_NUMBER", "OTHER_NUMBER", "SPACE_SEPARATOR", "LINE_SEPARATOR", "PARAGRAPH_SEPARATOR", "CONTROL", "FORMAT", "PRIVATE_USE", "SURROGATE", "DASH_PUNCTUATION", "START_PUNCTUATION", "END_PUNCTUATION", "CONNECTOR_PUNCTUATION", "OTHER_PUNCTUATION", "MATH_SYMBOL", "CURRENCY_SYMBOL", "MODIFIER_SYMBOL", "OTHER_SYMBOL", "INITIAL_QUOTE_PUNCTUATION", "FINAL_QUOTE_PUNCTUATION", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CharCategory {
    public static final CharCategory COMBINING_SPACING_MARK;
    public static final CharCategory CONNECTOR_PUNCTUATION;
    public static final CharCategory CONTROL;
    public static final CharCategory CURRENCY_SYMBOL;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final CharCategory DASH_PUNCTUATION;
    public static final CharCategory DECIMAL_DIGIT_NUMBER;
    public static final CharCategory ENCLOSING_MARK;
    public static final CharCategory END_PUNCTUATION;
    public static final CharCategory FINAL_QUOTE_PUNCTUATION;
    public static final CharCategory FORMAT;
    public static final CharCategory INITIAL_QUOTE_PUNCTUATION;
    public static final CharCategory LETTER_NUMBER;
    public static final CharCategory LINE_SEPARATOR;
    public static final CharCategory LOWERCASE_LETTER;
    public static final CharCategory MATH_SYMBOL;
    public static final CharCategory MODIFIER_LETTER;
    public static final CharCategory MODIFIER_SYMBOL;
    public static final CharCategory NON_SPACING_MARK;
    public static final CharCategory OTHER_LETTER;
    public static final CharCategory OTHER_NUMBER;
    public static final CharCategory OTHER_PUNCTUATION;
    public static final CharCategory OTHER_SYMBOL;
    public static final CharCategory PARAGRAPH_SEPARATOR;
    public static final CharCategory PRIVATE_USE;
    public static final CharCategory SPACE_SEPARATOR;
    public static final CharCategory START_PUNCTUATION;
    public static final CharCategory SURROGATE;
    public static final CharCategory TITLECASE_LETTER;
    public static final CharCategory UNASSIGNED;
    public static final CharCategory UPPERCASE_LETTER;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final /* synthetic */ CharCategory[] f1616x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final /* synthetic */ EnumEntries f1617x75d576dc;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final int value;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
    public final String code;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/text/CharCategory$Companion;", "", "", "category", "Lkotlin/text/CharCategory;", "valueOf", "(I)Lkotlin/text/CharCategory;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NotNull
        public final CharCategory valueOf(int category) {
            if (category >= 0 && category < 17) {
                return (CharCategory) CharCategory.getEntries().get(category);
            }
            if (18 <= category && category < 31) {
                return (CharCategory) CharCategory.getEntries().get(category - 1);
            }
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(category, "Category #", " is not defined."));
        }
    }

    static {
        CharCategory charCategory = new CharCategory("UNASSIGNED", 0, 0, "Cn");
        UNASSIGNED = charCategory;
        CharCategory charCategory2 = new CharCategory("UPPERCASE_LETTER", 1, 1, "Lu");
        UPPERCASE_LETTER = charCategory2;
        CharCategory charCategory3 = new CharCategory("LOWERCASE_LETTER", 2, 2, "Ll");
        LOWERCASE_LETTER = charCategory3;
        CharCategory charCategory4 = new CharCategory("TITLECASE_LETTER", 3, 3, "Lt");
        TITLECASE_LETTER = charCategory4;
        CharCategory charCategory5 = new CharCategory("MODIFIER_LETTER", 4, 4, "Lm");
        MODIFIER_LETTER = charCategory5;
        CharCategory charCategory6 = new CharCategory("OTHER_LETTER", 5, 5, "Lo");
        OTHER_LETTER = charCategory6;
        CharCategory charCategory7 = new CharCategory("NON_SPACING_MARK", 6, 6, "Mn");
        NON_SPACING_MARK = charCategory7;
        CharCategory charCategory8 = new CharCategory("ENCLOSING_MARK", 7, 7, "Me");
        ENCLOSING_MARK = charCategory8;
        CharCategory charCategory9 = new CharCategory("COMBINING_SPACING_MARK", 8, 8, "Mc");
        COMBINING_SPACING_MARK = charCategory9;
        CharCategory charCategory10 = new CharCategory("DECIMAL_DIGIT_NUMBER", 9, 9, "Nd");
        DECIMAL_DIGIT_NUMBER = charCategory10;
        CharCategory charCategory11 = new CharCategory("LETTER_NUMBER", 10, 10, "Nl");
        LETTER_NUMBER = charCategory11;
        CharCategory charCategory12 = new CharCategory("OTHER_NUMBER", 11, 11, "No");
        OTHER_NUMBER = charCategory12;
        CharCategory charCategory13 = new CharCategory("SPACE_SEPARATOR", 12, 12, "Zs");
        SPACE_SEPARATOR = charCategory13;
        CharCategory charCategory14 = new CharCategory("LINE_SEPARATOR", 13, 13, "Zl");
        LINE_SEPARATOR = charCategory14;
        CharCategory charCategory15 = new CharCategory("PARAGRAPH_SEPARATOR", 14, 14, "Zp");
        PARAGRAPH_SEPARATOR = charCategory15;
        CharCategory charCategory16 = new CharCategory("CONTROL", 15, 15, "Cc");
        CONTROL = charCategory16;
        CharCategory charCategory17 = new CharCategory("FORMAT", 16, 16, "Cf");
        FORMAT = charCategory17;
        CharCategory charCategory18 = new CharCategory("PRIVATE_USE", 17, 18, "Co");
        PRIVATE_USE = charCategory18;
        CharCategory charCategory19 = new CharCategory("SURROGATE", 18, 19, "Cs");
        SURROGATE = charCategory19;
        CharCategory charCategory20 = new CharCategory("DASH_PUNCTUATION", 19, 20, "Pd");
        DASH_PUNCTUATION = charCategory20;
        CharCategory charCategory21 = new CharCategory("START_PUNCTUATION", 20, 21, "Ps");
        START_PUNCTUATION = charCategory21;
        CharCategory charCategory22 = new CharCategory("END_PUNCTUATION", 21, 22, "Pe");
        END_PUNCTUATION = charCategory22;
        CharCategory charCategory23 = new CharCategory("CONNECTOR_PUNCTUATION", 22, 23, "Pc");
        CONNECTOR_PUNCTUATION = charCategory23;
        CharCategory charCategory24 = new CharCategory("OTHER_PUNCTUATION", 23, 24, "Po");
        OTHER_PUNCTUATION = charCategory24;
        CharCategory charCategory25 = new CharCategory("MATH_SYMBOL", 24, 25, "Sm");
        MATH_SYMBOL = charCategory25;
        CharCategory charCategory26 = new CharCategory("CURRENCY_SYMBOL", 25, 26, "Sc");
        CURRENCY_SYMBOL = charCategory26;
        CharCategory charCategory27 = new CharCategory("MODIFIER_SYMBOL", 26, 27, "Sk");
        MODIFIER_SYMBOL = charCategory27;
        CharCategory charCategory28 = new CharCategory("OTHER_SYMBOL", 27, 28, "So");
        OTHER_SYMBOL = charCategory28;
        CharCategory charCategory29 = new CharCategory("INITIAL_QUOTE_PUNCTUATION", 28, 29, "Pi");
        INITIAL_QUOTE_PUNCTUATION = charCategory29;
        CharCategory charCategory30 = new CharCategory("FINAL_QUOTE_PUNCTUATION", 29, 30, "Pf");
        FINAL_QUOTE_PUNCTUATION = charCategory30;
        CharCategory[] charCategoryArr = {charCategory, charCategory2, charCategory3, charCategory4, charCategory5, charCategory6, charCategory7, charCategory8, charCategory9, charCategory10, charCategory11, charCategory12, charCategory13, charCategory14, charCategory15, charCategory16, charCategory17, charCategory18, charCategory19, charCategory20, charCategory21, charCategory22, charCategory23, charCategory24, charCategory25, charCategory26, charCategory27, charCategory28, charCategory29, charCategory30};
        f1616x1378447b = charCategoryArr;
        f1617x75d576dc = EnumEntriesKt.enumEntries(charCategoryArr);
        INSTANCE = new Companion(null);
    }

    public CharCategory(String str, int i, int i2, String str2) {
        this.value = i2;
        this.code = str2;
    }

    @NotNull
    public static EnumEntries<CharCategory> getEntries() {
        return f1617x75d576dc;
    }

    public static CharCategory valueOf(String str) {
        return (CharCategory) Enum.valueOf(CharCategory.class, str);
    }

    public static CharCategory[] values() {
        return (CharCategory[]) f1616x1378447b.clone();
    }

    public final boolean contains(char r2) {
        if (Character.getType(r2) == this.value) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getCode() {
        return this.code;
    }

    public final int getValue() {
        return this.value;
    }
}
