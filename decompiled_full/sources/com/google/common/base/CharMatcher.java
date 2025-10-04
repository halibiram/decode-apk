package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.util.Arrays;
import java.util.BitSet;

@GwtCompatible(emulated = true)
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public abstract class CharMatcher implements Predicate<Character> {
    private static final int DISTINCT_CHARS = 65536;

    /* loaded from: classes2.dex */
    public static final class And extends CharMatcher {
        final CharMatcher first;
        final CharMatcher second;

        public And(CharMatcher charMatcher, CharMatcher charMatcher2) {
            this.first = (CharMatcher) Preconditions.checkNotNull(charMatcher);
            this.second = (CharMatcher) Preconditions.checkNotNull(charMatcher2);
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            if (this.first.matches(c) && this.second.matches(c)) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible
        public void setBits(BitSet bitSet) {
            BitSet bitSet2 = new BitSet();
            this.first.setBits(bitSet2);
            BitSet bitSet3 = new BitSet();
            this.second.setBits(bitSet3);
            bitSet2.and(bitSet3);
            bitSet.or(bitSet2);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String valueOf = String.valueOf(this.first);
            String valueOf2 = String.valueOf(this.second);
            StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 19);
            sb.append(new ObfuscatedString(new long[]{-6737150727184598437L, 8588174073998309021L, -2527160674511806325L}).toString());
            sb.append(valueOf);
            sb.append(new ObfuscatedString(new long[]{-762675901727205497L, -6577511790374077053L}).toString());
            sb.append(valueOf2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{916664203970253777L, 939017406116505352L}), sb);
        }
    }

    /* loaded from: classes2.dex */
    public static final class Any extends NamedFastMatcher {
        static final Any INSTANCE = new Any();

        private Any() {
            super(new ObfuscatedString(new long[]{-6027499856143614617L, 4038144123991770157L, -3796253111266081646L, 8564713863359621494L}).toString());
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher and(CharMatcher charMatcher) {
            return (CharMatcher) Preconditions.checkNotNull(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher
        public String collapseFrom(CharSequence charSequence, char c) {
            if (charSequence.length() == 0) {
                return new ObfuscatedString(new long[]{-2330594876195431084L}).toString();
            }
            return String.valueOf(c);
        }

        @Override // com.google.common.base.CharMatcher
        public int countIn(CharSequence charSequence) {
            return charSequence.length();
        }

        @Override // com.google.common.base.CharMatcher
        public int indexIn(CharSequence charSequence) {
            return charSequence.length() == 0 ? -1 : 0;
        }

        @Override // com.google.common.base.CharMatcher
        public int lastIndexIn(CharSequence charSequence) {
            return charSequence.length() - 1;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return true;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesAllOf(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return true;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesNoneOf(CharSequence charSequence) {
            if (charSequence.length() == 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.base.CharMatcher.FastMatcher, com.google.common.base.CharMatcher
        public CharMatcher negate() {
            return CharMatcher.none();
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher or(CharMatcher charMatcher) {
            Preconditions.checkNotNull(charMatcher);
            return this;
        }

        @Override // com.google.common.base.CharMatcher
        public String removeFrom(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return new ObfuscatedString(new long[]{7297376867460013914L}).toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, char c) {
            char[] cArr = new char[charSequence.length()];
            Arrays.fill(cArr, c);
            return new String(cArr);
        }

        @Override // com.google.common.base.CharMatcher
        public String trimFrom(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return new ObfuscatedString(new long[]{-8210313143180833326L}).toString();
        }

        @Override // com.google.common.base.CharMatcher
        public int indexIn(CharSequence charSequence, int i) {
            int length = charSequence.length();
            Preconditions.checkPositionIndex(i, length);
            if (i == length) {
                return -1;
            }
            return i;
        }

        @Override // com.google.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, CharSequence charSequence2) {
            StringBuilder sb = new StringBuilder(charSequence2.length() * charSequence.length());
            for (int i = 0; i < charSequence.length(); i++) {
                sb.append(charSequence2);
            }
            return sb.toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class AnyOf extends CharMatcher {
        private final char[] chars;

        public AnyOf(CharSequence charSequence) {
            char[] charArray = charSequence.toString().toCharArray();
            this.chars = charArray;
            Arrays.sort(charArray);
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            if (Arrays.binarySearch(this.chars, c) >= 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible
        public void setBits(BitSet bitSet) {
            for (char c : this.chars) {
                bitSet.set(c);
            }
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            StringBuilder sb = new StringBuilder(new ObfuscatedString(new long[]{-900880959948083149L, -8014049842982321786L, 5245670373185349684L, 4379563229500073056L}).toString());
            for (char c : this.chars) {
                sb.append(CharMatcher.showCharacter(c));
            }
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4502193643909597078L, 1273775025023408322L}), sb);
        }
    }

    /* loaded from: classes2.dex */
    public static final class Ascii extends NamedFastMatcher {
        static final Ascii INSTANCE = new Ascii();

        public Ascii() {
            super(new ObfuscatedString(new long[]{7519535397041233624L, 759222582168892433L, -8706931948449983646L, -2981635194222635919L}).toString());
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return c <= 127;
        }
    }

    @GwtIncompatible
    /* loaded from: classes2.dex */
    public static final class BitSetMatcher extends NamedFastMatcher {
        private final BitSet table;

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return this.table.get(c);
        }

        @Override // com.google.common.base.CharMatcher
        public void setBits(BitSet bitSet) {
            bitSet.or(this.table);
        }

        private BitSetMatcher(BitSet bitSet, String str) {
            super(str);
            this.table = bitSet.length() + 64 < bitSet.size() ? (BitSet) bitSet.clone() : bitSet;
        }
    }

    /* loaded from: classes2.dex */
    public static final class BreakingWhitespace extends CharMatcher {
        static final CharMatcher INSTANCE = new BreakingWhitespace();

        private BreakingWhitespace() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            if (c != ' ' && c != 133 && c != 5760) {
                if (c == 8199) {
                    return false;
                }
                if (c != 8287 && c != 12288 && c != 8232 && c != 8233) {
                    switch (c) {
                        case '\t':
                        case '\n':
                        case 11:
                        case '\f':
                        case '\r':
                            break;
                        default:
                            return c >= 8192 && c <= 8202;
                    }
                }
            }
            return true;
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return new ObfuscatedString(new long[]{-8281216988934693222L, 6911379568657016300L, -3521385306445479850L, 1866989842937076863L, -4561875171926476892L}).toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class Digit extends RangesMatcher {
        private static final String ZEROES = new ObfuscatedString(new long[]{-5597712488940634304L, 196679083338748963L, -4043911678562668417L, -6780507937635940831L, -2259530846955448988L, 1798710880689432367L, -6208279748674434860L, -6001447237828978588L, -2217652675469650626L, 5821050821183609785L, 3047387727169488290L, -7396725026190813015L, 2243185494840107287L, -5571843133074055088L, 1584379249819233924L}).toString();
        static final Digit INSTANCE = new Digit();

        private Digit() {
            super(new ObfuscatedString(new long[]{-6126050122589056449L, -7589818505421445067L, -3621729029441055018L, 4635008747721537290L}).toString(), zeroes(), nines());
        }

        private static char[] nines() {
            char[] cArr = new char[new ObfuscatedString(new long[]{-7093971001615677773L, 7390080479803479720L, -602428195448565494L, 6951252112407770111L, -6215961212641985033L, -6838479495791135807L, 7866986165834394531L, 8969254603307690364L, 5326199474613421501L, -7712458159990645751L, -9079456506614468309L, -8968788867328897525L, -3343755512417469809L, 815869947499811512L, 4177273470145574028L}).toString().length()];
            for (int i = 0; i < new ObfuscatedString(new long[]{4044091776512646339L, 3203452126428853486L, 488410034219965093L, 3928802608244030732L, -1946473216221937798L, 3903632332206726321L, 8170416044226865668L, -4019517331011932287L, 2386205958055740687L, 5825435240402527289L, 1685442940076703860L, -3794904601151186032L, 8223666232998852482L, -7708853817575575707L, 5481356622629387779L}).toString().length(); i++) {
                cArr[i] = (char) (new ObfuscatedString(new long[]{-1690381012173515673L, -3878566394769401194L, -584289426364132862L, -4615773380792968733L, 3346631716847247359L, -2284083972047721186L, 7290559992121287602L, 6913830554467238224L, -4178314694939048701L, -3957742964240005476L, 2447585391746609921L, -1567789004750843543L, 594613511245712543L, -4403968668900269289L, -2587506413454409377L}).toString().charAt(i) + '\t');
            }
            return cArr;
        }

        private static char[] zeroes() {
            return new ObfuscatedString(new long[]{-7915337341940423661L, -1878346177189323737L, 7762651080118337087L, 2949856450172177884L, -7751104784803879980L, -8165709660241934992L, -4977266172259344062L, 2815905203333872738L, 7097365418025842492L, -6335817913919442738L, 4900058768884147749L, 6040420058796136071L, 9147484312324815013L, 6604259163676128391L, 1163254216775879046L}).toString().toCharArray();
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class FastMatcher extends CharMatcher {
        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher negate() {
            return new NegatedFastMatcher(this);
        }

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher precomputed() {
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static final class ForPredicate extends CharMatcher {
        private final Predicate<? super Character> predicate;

        public ForPredicate(Predicate<? super Character> predicate) {
            this.predicate = (Predicate) Preconditions.checkNotNull(predicate);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return this.predicate.apply(Character.valueOf(c));
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String valueOf = String.valueOf(this.predicate);
            StringBuilder sb = new StringBuilder(valueOf.length() + 26);
            sb.append(new ObfuscatedString(new long[]{1254049132638468481L, 1221977165617590772L, 175948089594974848L, -3528469940435838007L, 6002714105445884744L}).toString());
            sb.append(valueOf);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2997584298926436356L, -5879766366419645338L}), sb);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        public boolean apply(Character ch) {
            return this.predicate.apply(Preconditions.checkNotNull(ch));
        }
    }

    /* loaded from: classes2.dex */
    public static final class InRange extends FastMatcher {
        private final char endInclusive;
        private final char startInclusive;

        public InRange(char c, char c2) {
            boolean z;
            if (c2 >= c) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z);
            this.startInclusive = c;
            this.endInclusive = c2;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            if (this.startInclusive <= c && c <= this.endInclusive) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible
        public void setBits(BitSet bitSet) {
            bitSet.set(this.startInclusive, this.endInclusive + 1);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String showCharacter = CharMatcher.showCharacter(this.startInclusive);
            String showCharacter2 = CharMatcher.showCharacter(this.endInclusive);
            StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(AbstractC1320xaf50c7e8.m4356x1378447b(27, showCharacter), showCharacter2));
            sb.append(new ObfuscatedString(new long[]{-192065186598099342L, -6882867254663715057L, -3477679697432856831L, -6789738921093134642L}).toString());
            sb.append(showCharacter);
            sb.append(new ObfuscatedString(new long[]{-3937341005431129700L, -4939758793887303131L}).toString());
            sb.append(showCharacter2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2695209718006571676L, -6561686490865610312L}), sb);
        }
    }

    /* loaded from: classes2.dex */
    public static final class Invisible extends RangesMatcher {
        private static final String RANGE_STARTS = "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u0890\u08e2\u1680\u180e\u2000\u2028\u205f\u2066\u3000\ud800\ufeff\ufff9";
        private static final String RANGE_ENDS = new ObfuscatedString(new long[]{-3498666921515787186L, 7822103669604261191L, -4339962516100303316L, -5313051020615984019L, 2615176842143055915L, 5777030536849591822L, 5833968619082530909L, -2976809057982943157L}).toString();
        static final Invisible INSTANCE = new Invisible();

        private Invisible() {
            super(new ObfuscatedString(new long[]{2821128594834740634L, -6346238886173593650L, 6216486428891402051L, 3696968969226403657L}).toString(), RANGE_STARTS.toCharArray(), new ObfuscatedString(new long[]{3601173283203803485L, -3951605263943362599L, 8736455198320393678L, -7659228327713446028L, -5891859866342694093L, -2540955330710306826L, -640477896065538311L, 4036286371940087361L}).toString().toCharArray());
        }
    }

    /* loaded from: classes2.dex */
    public static final class Is extends FastMatcher {
        private final char match;

        public Is(char c) {
            this.match = c;
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher and(CharMatcher charMatcher) {
            if (charMatcher.matches(this.match)) {
                return this;
            }
            return CharMatcher.none();
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            if (c == this.match) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.base.CharMatcher.FastMatcher, com.google.common.base.CharMatcher
        public CharMatcher negate() {
            return CharMatcher.isNot(this.match);
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher or(CharMatcher charMatcher) {
            if (!charMatcher.matches(this.match)) {
                return super.or(charMatcher);
            }
            return charMatcher;
        }

        @Override // com.google.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, char c) {
            return charSequence.toString().replace(this.match, c);
        }

        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible
        public void setBits(BitSet bitSet) {
            bitSet.set(this.match);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String showCharacter = CharMatcher.showCharacter(this.match);
            StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(18, showCharacter));
            sb.append(new ObfuscatedString(new long[]{-3869614695159918598L, 8518738331769200650L, 3872586247518842358L}).toString());
            sb.append(showCharacter);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1150036228738192210L, -4159964549436016720L}), sb);
        }
    }

    /* loaded from: classes2.dex */
    public static final class IsEither extends FastMatcher {
        private final char match1;
        private final char match2;

        public IsEither(char c, char c2) {
            this.match1 = c;
            this.match2 = c2;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            if (c != this.match1 && c != this.match2) {
                return false;
            }
            return true;
        }

        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible
        public void setBits(BitSet bitSet) {
            bitSet.set(this.match1);
            bitSet.set(this.match2);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String showCharacter = CharMatcher.showCharacter(this.match1);
            String showCharacter2 = CharMatcher.showCharacter(this.match2);
            StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(AbstractC1320xaf50c7e8.m4356x1378447b(21, showCharacter), showCharacter2));
            sb.append(new ObfuscatedString(new long[]{-6883532082792581337L, 2167252619321876487L, -6911951829751571044L, 121508510986901510L}).toString());
            sb.append(showCharacter);
            sb.append(showCharacter2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{64276234612201457L, -1281264385947391837L}), sb);
        }
    }

    /* loaded from: classes2.dex */
    public static final class IsNot extends FastMatcher {
        private final char match;

        public IsNot(char c) {
            this.match = c;
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher and(CharMatcher charMatcher) {
            if (charMatcher.matches(this.match)) {
                return super.and(charMatcher);
            }
            return charMatcher;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            if (c != this.match) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.base.CharMatcher.FastMatcher, com.google.common.base.CharMatcher
        public CharMatcher negate() {
            return CharMatcher.is(this.match);
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher or(CharMatcher charMatcher) {
            if (charMatcher.matches(this.match)) {
                return CharMatcher.any();
            }
            return this;
        }

        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible
        public void setBits(BitSet bitSet) {
            bitSet.set(0, this.match);
            bitSet.set(this.match + 1, 65536);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String showCharacter = CharMatcher.showCharacter(this.match);
            StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(21, showCharacter));
            sb.append(new ObfuscatedString(new long[]{8084348760750172751L, -4765487594972283717L, -3634084893764223696L, -7397639169627450148L}).toString());
            sb.append(showCharacter);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7619013834896824191L, -7841010313645014176L}), sb);
        }
    }

    /* loaded from: classes2.dex */
    public static final class JavaDigit extends CharMatcher {
        static final JavaDigit INSTANCE = new JavaDigit();

        private JavaDigit() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Character.isDigit(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return new ObfuscatedString(new long[]{9119433203864496085L, -3855693876912523742L, 3067684873696039826L, 7444767447843472390L}).toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class JavaIsoControl extends NamedFastMatcher {
        static final JavaIsoControl INSTANCE = new JavaIsoControl();

        private JavaIsoControl() {
            super(new ObfuscatedString(new long[]{5117390985500597489L, 1985393923151573065L, -999249285728422380L, -4525618215894104578L, 6280591484486939346L}).toString());
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return c <= 31 || (c >= 127 && c <= 159);
        }
    }

    /* loaded from: classes2.dex */
    public static final class JavaLetter extends CharMatcher {
        static final JavaLetter INSTANCE = new JavaLetter();

        private JavaLetter() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Character.isLetter(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return new ObfuscatedString(new long[]{-8528818465404049215L, -2925024955039240637L, -6402092877796073277L, 9113875860888022398L}).toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class JavaLetterOrDigit extends CharMatcher {
        static final JavaLetterOrDigit INSTANCE = new JavaLetterOrDigit();

        private JavaLetterOrDigit() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Character.isLetterOrDigit(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return new ObfuscatedString(new long[]{-5904487419425678556L, 5690626422324997099L, -2826735338166164287L, 4196786720060641475L, -2743825064388542786L}).toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class JavaLowerCase extends CharMatcher {
        static final JavaLowerCase INSTANCE = new JavaLowerCase();

        private JavaLowerCase() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Character.isLowerCase(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return new ObfuscatedString(new long[]{-2483147947016500150L, -6622324486860129489L, -8663659445655995781L, 7597329038380261955L, 4889346173435719544L}).toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class JavaUpperCase extends CharMatcher {
        static final JavaUpperCase INSTANCE = new JavaUpperCase();

        private JavaUpperCase() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Character.isUpperCase(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return new ObfuscatedString(new long[]{3377736265598402995L, -330523469946831690L, -4918551375163781611L, 9149415253242302047L, -2321428353549702790L}).toString();
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class NamedFastMatcher extends FastMatcher {
        private final String description;

        public NamedFastMatcher(String str) {
            this.description = (String) Preconditions.checkNotNull(str);
        }

        @Override // com.google.common.base.CharMatcher
        public final String toString() {
            return this.description;
        }
    }

    /* loaded from: classes2.dex */
    public static class Negated extends CharMatcher {
        final CharMatcher original;

        public Negated(CharMatcher charMatcher) {
            this.original = (CharMatcher) Preconditions.checkNotNull(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public int countIn(CharSequence charSequence) {
            return charSequence.length() - this.original.countIn(charSequence);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return !this.original.matches(c);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesAllOf(CharSequence charSequence) {
            return this.original.matchesNoneOf(charSequence);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesNoneOf(CharSequence charSequence) {
            return this.original.matchesAllOf(charSequence);
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher negate() {
            return this.original;
        }

        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible
        public void setBits(BitSet bitSet) {
            BitSet bitSet2 = new BitSet();
            this.original.setBits(bitSet2);
            bitSet2.flip(0, 65536);
            bitSet.or(bitSet2);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String valueOf = String.valueOf(this.original);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{105139441927591835L, -1720213916680438172L, 357662761638308468L}), AbstractC0362x4440ab85.m2938x1aebc6d9(valueOf.length() + 9, valueOf));
        }
    }

    /* loaded from: classes2.dex */
    public static class NegatedFastMatcher extends Negated {
        public NegatedFastMatcher(CharMatcher charMatcher) {
            super(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher precomputed() {
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static final class None extends NamedFastMatcher {
        static final None INSTANCE = new None();

        private None() {
            super(new ObfuscatedString(new long[]{4461703189012381000L, 2785479027740723572L, 238515251291128824L, -5221073840833837468L}).toString());
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher and(CharMatcher charMatcher) {
            Preconditions.checkNotNull(charMatcher);
            return this;
        }

        @Override // com.google.common.base.CharMatcher
        public String collapseFrom(CharSequence charSequence, char c) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public int countIn(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return 0;
        }

        @Override // com.google.common.base.CharMatcher
        public int indexIn(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return -1;
        }

        @Override // com.google.common.base.CharMatcher
        public int lastIndexIn(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return -1;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return false;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesAllOf(CharSequence charSequence) {
            if (charSequence.length() == 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesNoneOf(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return true;
        }

        @Override // com.google.common.base.CharMatcher.FastMatcher, com.google.common.base.CharMatcher
        public CharMatcher negate() {
            return CharMatcher.any();
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher or(CharMatcher charMatcher) {
            return (CharMatcher) Preconditions.checkNotNull(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher
        public String removeFrom(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, char c) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String trimFrom(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String trimLeadingFrom(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String trimTrailingFrom(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public int indexIn(CharSequence charSequence, int i) {
            Preconditions.checkPositionIndex(i, charSequence.length());
            return -1;
        }

        @Override // com.google.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, CharSequence charSequence2) {
            Preconditions.checkNotNull(charSequence2);
            return charSequence.toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class Or extends CharMatcher {
        final CharMatcher first;
        final CharMatcher second;

        public Or(CharMatcher charMatcher, CharMatcher charMatcher2) {
            this.first = (CharMatcher) Preconditions.checkNotNull(charMatcher);
            this.second = (CharMatcher) Preconditions.checkNotNull(charMatcher2);
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            if (!this.first.matches(c) && !this.second.matches(c)) {
                return false;
            }
            return true;
        }

        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible
        public void setBits(BitSet bitSet) {
            this.first.setBits(bitSet);
            this.second.setBits(bitSet);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String valueOf = String.valueOf(this.first);
            String valueOf2 = String.valueOf(this.second);
            StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 18);
            sb.append(new ObfuscatedString(new long[]{421994703922467683L, 8823033822204353494L, -5169711887703711698L}).toString());
            sb.append(valueOf);
            sb.append(new ObfuscatedString(new long[]{-7342457979975109021L, -42879389456793218L}).toString());
            sb.append(valueOf2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{890117671783533571L, 3803773036063121328L}), sb);
        }
    }

    /* loaded from: classes2.dex */
    public static class RangesMatcher extends CharMatcher {
        private final String description;
        private final char[] rangeEnds;
        private final char[] rangeStarts;

        public RangesMatcher(String str, char[] cArr, char[] cArr2) {
            boolean z;
            boolean z2;
            boolean z3;
            this.description = str;
            this.rangeStarts = cArr;
            this.rangeEnds = cArr2;
            if (cArr.length == cArr2.length) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z);
            int i = 0;
            while (i < cArr.length) {
                if (cArr[i] <= cArr2[i]) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                Preconditions.checkArgument(z2);
                int i2 = i + 1;
                if (i2 < cArr.length) {
                    if (cArr2[i] < cArr[i2]) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    Preconditions.checkArgument(z3);
                }
                i = i2;
            }
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            int binarySearch = Arrays.binarySearch(this.rangeStarts, c);
            if (binarySearch >= 0) {
                return true;
            }
            int i = (~binarySearch) - 1;
            if (i >= 0 && c <= this.rangeEnds[i]) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return this.description;
        }
    }

    /* loaded from: classes2.dex */
    public static final class SingleWidth extends RangesMatcher {
        static final SingleWidth INSTANCE = new SingleWidth();

        private SingleWidth() {
            super(new ObfuscatedString(new long[]{-145048649412979723L, -6701524455459368154L, -3528182323874546547L, 5083071601527997176L, -8277296162168608588L}).toString(), "\u0000־א׳\u0600ݐ\u0e00Ḁ℀ﭐﹰ｡".toCharArray(), new ObfuscatedString(new long[]{-1947384705157082593L, -4967013747281080906L, -2126984804693132749L, 919017832530030083L, -6056129619811160136L}).toString().toCharArray());
        }
    }

    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static final class Whitespace extends NamedFastMatcher {
        static final int MULTIPLIER = 1682554634;
        static final String TABLE = new ObfuscatedString(new long[]{2478544153546441035L, -8072645784692966888L, 3356858282550569430L, -985125308611102541L, 2123848304714567088L, -5854002577134028716L, 4711191986914540487L, 4386313338452220289L, 3000829629613570418L, 5185826064264436794L, 2486244627137697628L, -703372972761104501L}).toString();
        static final int SHIFT = Integer.numberOfLeadingZeros(new ObfuscatedString(new long[]{389157612571487124L, -6601191935193035489L, -6160959047109932922L, 2109505603189107802L, 5201650912623772986L, 6532927860464732680L, -8321728891275344341L, -7051129381734728991L, -5644857980263590749L, 6986580025500360425L, 6837255867241781494L, 331970910595385129L}).toString().length() - 1);
        static final Whitespace INSTANCE = new Whitespace();

        public Whitespace() {
            super(new ObfuscatedString(new long[]{-4803272772443446334L, -4892198722481621821L, 7309583381474995372L, -6258155029253577579L}).toString());
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            if (new ObfuscatedString(new long[]{3446780664538710052L, -3774188540316176831L, 2116708234066850146L, -971754558461231153L, -9159875717366967736L, -3607480664965816998L, -4582517290066426147L, -1989734667224239171L, 4387854601737279894L, -7910844301049271961L, -4382429137996494300L, 5856373749761065631L}).toString().charAt((MULTIPLIER * c) >>> SHIFT) == c) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible
        public void setBits(BitSet bitSet) {
            for (int i = 0; i < new ObfuscatedString(new long[]{-5056631757838879862L, 5596304143395471640L, -541625069333327858L, 3646540115100509695L, 6957132762279507607L, -3885669893147828397L, 133097562518845354L, -8299856452933625183L, 4026833337052135411L, -805473759836587045L, 740442656672469086L, 63232365041224693L}).toString().length(); i++) {
                bitSet.set(new ObfuscatedString(new long[]{-6965008535762830005L, -9156041631744870020L, -8788569171899168798L, 5385555371818267652L, -9147060572602041772L, 5918527724402088166L, 2452238895412761837L, -2089392391465367575L, 7899454283284332944L, 2951849302697319435L, 3713954899249409957L, -7458708493711228198L}).toString().charAt(i));
            }
        }
    }

    public static CharMatcher any() {
        return Any.INSTANCE;
    }

    public static CharMatcher anyOf(CharSequence charSequence) {
        int length = charSequence.length();
        if (length != 0) {
            if (length != 1) {
                if (length != 2) {
                    return new AnyOf(charSequence);
                }
                return isEither(charSequence.charAt(0), charSequence.charAt(1));
            }
            return is(charSequence.charAt(0));
        }
        return none();
    }

    public static CharMatcher ascii() {
        return Ascii.INSTANCE;
    }

    public static CharMatcher breakingWhitespace() {
        return BreakingWhitespace.INSTANCE;
    }

    @Deprecated
    public static CharMatcher digit() {
        return Digit.INSTANCE;
    }

    private String finishCollapseFrom(CharSequence charSequence, int i, int i2, char c, StringBuilder sb, boolean z) {
        while (i < i2) {
            char charAt = charSequence.charAt(i);
            if (matches(charAt)) {
                if (!z) {
                    sb.append(c);
                    z = true;
                }
            } else {
                sb.append(charAt);
                z = false;
            }
            i++;
        }
        return sb.toString();
    }

    public static CharMatcher forPredicate(Predicate<? super Character> predicate) {
        if (predicate instanceof CharMatcher) {
            return (CharMatcher) predicate;
        }
        return new ForPredicate(predicate);
    }

    public static CharMatcher inRange(char c, char c2) {
        return new InRange(c, c2);
    }

    @Deprecated
    public static CharMatcher invisible() {
        return Invisible.INSTANCE;
    }

    public static CharMatcher is(char c) {
        return new Is(c);
    }

    private static IsEither isEither(char c, char c2) {
        return new IsEither(c, c2);
    }

    public static CharMatcher isNot(char c) {
        return new IsNot(c);
    }

    @GwtIncompatible
    private static boolean isSmall(int i, int i2) {
        return i <= 1023 && i2 > i * 64;
    }

    @Deprecated
    public static CharMatcher javaDigit() {
        return JavaDigit.INSTANCE;
    }

    public static CharMatcher javaIsoControl() {
        return JavaIsoControl.INSTANCE;
    }

    @Deprecated
    public static CharMatcher javaLetter() {
        return JavaLetter.INSTANCE;
    }

    @Deprecated
    public static CharMatcher javaLetterOrDigit() {
        return JavaLetterOrDigit.INSTANCE;
    }

    @Deprecated
    public static CharMatcher javaLowerCase() {
        return JavaLowerCase.INSTANCE;
    }

    @Deprecated
    public static CharMatcher javaUpperCase() {
        return JavaUpperCase.INSTANCE;
    }

    public static CharMatcher none() {
        return None.INSTANCE;
    }

    public static CharMatcher noneOf(CharSequence charSequence) {
        return anyOf(charSequence).negate();
    }

    @GwtIncompatible
    private static CharMatcher precomputedPositive(int i, BitSet bitSet, String str) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (isSmall(i, bitSet.length())) {
                        return SmallCharMatcher.from(bitSet, str);
                    }
                    return new BitSetMatcher(bitSet, str);
                }
                char nextSetBit = (char) bitSet.nextSetBit(0);
                return isEither(nextSetBit, (char) bitSet.nextSetBit(nextSetBit + 1));
            }
            return is((char) bitSet.nextSetBit(0));
        }
        return none();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String showCharacter(char c) {
        String obfuscatedString = new ObfuscatedString(new long[]{4128311842685009308L, -4121832941768597614L, -1300926919165618176L}).toString();
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        for (int i = 0; i < 4; i++) {
            cArr[5 - i] = obfuscatedString.charAt(c & 15);
            c = (char) (c >> 4);
        }
        return String.copyValueOf(cArr);
    }

    @Deprecated
    public static CharMatcher singleWidth() {
        return SingleWidth.INSTANCE;
    }

    public static CharMatcher whitespace() {
        return Whitespace.INSTANCE;
    }

    public CharMatcher and(CharMatcher charMatcher) {
        return new And(this, charMatcher);
    }

    public String collapseFrom(CharSequence charSequence, char c) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (matches(charAt)) {
                if (charAt == c && (i == length - 1 || !matches(charSequence.charAt(i + 1)))) {
                    i++;
                } else {
                    StringBuilder sb = new StringBuilder(length);
                    sb.append(charSequence, 0, i);
                    sb.append(c);
                    return finishCollapseFrom(charSequence, i + 1, length, c, sb, true);
                }
            }
            i++;
        }
        return charSequence.toString();
    }

    public int countIn(CharSequence charSequence) {
        int i = 0;
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            if (matches(charSequence.charAt(i2))) {
                i++;
            }
        }
        return i;
    }

    public int indexIn(CharSequence charSequence) {
        return indexIn(charSequence, 0);
    }

    public int lastIndexIn(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (matches(charSequence.charAt(length))) {
                return length;
            }
        }
        return -1;
    }

    public abstract boolean matches(char c);

    public boolean matchesAllOf(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!matches(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }

    public boolean matchesAnyOf(CharSequence charSequence) {
        return !matchesNoneOf(charSequence);
    }

    public boolean matchesNoneOf(CharSequence charSequence) {
        if (indexIn(charSequence) == -1) {
            return true;
        }
        return false;
    }

    public CharMatcher negate() {
        return new Negated(this);
    }

    public CharMatcher or(CharMatcher charMatcher) {
        return new Or(this, charMatcher);
    }

    public CharMatcher precomputed() {
        return Platform.precomputeCharMatcher(this);
    }

    @GwtIncompatible
    public CharMatcher precomputedInternal() {
        String str;
        BitSet bitSet = new BitSet();
        setBits(bitSet);
        int cardinality = bitSet.cardinality();
        if (cardinality * 2 <= 65536) {
            return precomputedPositive(cardinality, bitSet, toString());
        }
        bitSet.flip(0, 65536);
        int i = 65536 - cardinality;
        String obfuscatedString = new ObfuscatedString(new long[]{6894663647592186079L, 7969150547816391037L, 3984426973472339589L}).toString();
        final String charMatcher = toString();
        if (charMatcher.endsWith(obfuscatedString)) {
            str = charMatcher.substring(0, charMatcher.length() - obfuscatedString.length());
        } else {
            String valueOf = String.valueOf(obfuscatedString);
            if (valueOf.length() != 0) {
                str = charMatcher.concat(valueOf);
            } else {
                str = new String(charMatcher);
            }
        }
        return new NegatedFastMatcher(this, precomputedPositive(i, bitSet, str)) { // from class: com.google.common.base.CharMatcher.1
            @Override // com.google.common.base.CharMatcher.Negated, com.google.common.base.CharMatcher
            public String toString() {
                return charMatcher;
            }
        };
    }

    public String removeFrom(CharSequence charSequence) {
        String charSequence2 = charSequence.toString();
        int indexIn = indexIn(charSequence2);
        if (indexIn == -1) {
            return charSequence2;
        }
        char[] charArray = charSequence2.toCharArray();
        int i = 1;
        while (true) {
            indexIn++;
            while (indexIn != charArray.length) {
                if (matches(charArray[indexIn])) {
                    break;
                }
                charArray[indexIn - i] = charArray[indexIn];
                indexIn++;
            }
            return new String(charArray, 0, indexIn - i);
            i++;
        }
    }

    public String replaceFrom(CharSequence charSequence, char c) {
        String charSequence2 = charSequence.toString();
        int indexIn = indexIn(charSequence2);
        if (indexIn == -1) {
            return charSequence2;
        }
        char[] charArray = charSequence2.toCharArray();
        charArray[indexIn] = c;
        while (true) {
            indexIn++;
            if (indexIn < charArray.length) {
                if (matches(charArray[indexIn])) {
                    charArray[indexIn] = c;
                }
            } else {
                return new String(charArray);
            }
        }
    }

    public String retainFrom(CharSequence charSequence) {
        return negate().removeFrom(charSequence);
    }

    @GwtIncompatible
    public void setBits(BitSet bitSet) {
        for (int i = 65535; i >= 0; i--) {
            if (matches((char) i)) {
                bitSet.set(i);
            }
        }
    }

    public String toString() {
        return super.toString();
    }

    public String trimAndCollapseFrom(CharSequence charSequence, char c) {
        int length = charSequence.length();
        int i = length - 1;
        int i2 = 0;
        while (i2 < length && matches(charSequence.charAt(i2))) {
            i2++;
        }
        int i3 = i;
        while (i3 > i2 && matches(charSequence.charAt(i3))) {
            i3--;
        }
        if (i2 == 0 && i3 == i) {
            return collapseFrom(charSequence, c);
        }
        int i4 = i3 + 1;
        return finishCollapseFrom(charSequence, i2, i4, c, new StringBuilder(i4 - i2), false);
    }

    public String trimFrom(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && matches(charSequence.charAt(i))) {
            i++;
        }
        int i2 = length - 1;
        while (i2 > i && matches(charSequence.charAt(i2))) {
            i2--;
        }
        return charSequence.subSequence(i, i2 + 1).toString();
    }

    public String trimLeadingFrom(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!matches(charSequence.charAt(i))) {
                return charSequence.subSequence(i, length).toString();
            }
        }
        return new ObfuscatedString(new long[]{-6302798284362675572L}).toString();
    }

    public String trimTrailingFrom(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!matches(charSequence.charAt(length))) {
                return charSequence.subSequence(0, length + 1).toString();
            }
        }
        return new ObfuscatedString(new long[]{2600652516857401468L}).toString();
    }

    @Override // com.google.common.base.Predicate
    @Deprecated
    public boolean apply(Character ch) {
        return matches(ch.charValue());
    }

    public int indexIn(CharSequence charSequence, int i) {
        int length = charSequence.length();
        Preconditions.checkPositionIndex(i, length);
        while (i < length) {
            if (matches(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public String replaceFrom(CharSequence charSequence, CharSequence charSequence2) {
        int length = charSequence2.length();
        if (length == 0) {
            return removeFrom(charSequence);
        }
        int i = 0;
        if (length == 1) {
            return replaceFrom(charSequence, charSequence2.charAt(0));
        }
        String charSequence3 = charSequence.toString();
        int indexIn = indexIn(charSequence3);
        if (indexIn == -1) {
            return charSequence3;
        }
        int length2 = charSequence3.length();
        StringBuilder sb = new StringBuilder(AbstractC0749x8313616e.m3323xfbe0c504(length2, 3, 2, 16));
        do {
            sb.append((CharSequence) charSequence3, i, indexIn);
            sb.append(charSequence2);
            i = indexIn + 1;
            indexIn = indexIn(charSequence3, i);
        } while (indexIn != -1);
        sb.append((CharSequence) charSequence3, i, length2);
        return sb.toString();
    }
}
