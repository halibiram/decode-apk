package com.google.common.cache;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.base.Strings;
import com.google.common.cache.LocalCache;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
@GwtIncompatible
/* loaded from: classes2.dex */
public final class CacheBuilderSpec {
    private static final Splitter KEYS_SPLITTER = Splitter.on(',').trimResults();
    private static final Splitter KEY_VALUE_SPLITTER = Splitter.on('=').trimResults();
    private static final ImmutableMap<String, ValueParser> VALUE_PARSERS;

    @VisibleForTesting
    long accessExpirationDuration;

    @VisibleForTesting
    @CheckForNull
    TimeUnit accessExpirationTimeUnit;

    @VisibleForTesting
    @CheckForNull
    Integer concurrencyLevel;

    @VisibleForTesting
    @CheckForNull
    Integer initialCapacity;

    @VisibleForTesting
    @CheckForNull
    LocalCache.Strength keyStrength;

    @VisibleForTesting
    @CheckForNull
    Long maximumSize;

    @VisibleForTesting
    @CheckForNull
    Long maximumWeight;

    @VisibleForTesting
    @CheckForNull
    Boolean recordStats;

    @VisibleForTesting
    long refreshDuration;

    @VisibleForTesting
    @CheckForNull
    TimeUnit refreshTimeUnit;
    private final String specification;

    @VisibleForTesting
    @CheckForNull
    LocalCache.Strength valueStrength;

    @VisibleForTesting
    long writeExpirationDuration;

    @VisibleForTesting
    @CheckForNull
    TimeUnit writeExpirationTimeUnit;

    /* renamed from: com.google.common.cache.CacheBuilderSpec$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$common$cache$LocalCache$Strength;

        static {
            int[] iArr = new int[LocalCache.Strength.values().length];
            $SwitchMap$com$google$common$cache$LocalCache$Strength = iArr;
            try {
                iArr[LocalCache.Strength.WEAK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$common$cache$LocalCache$Strength[LocalCache.Strength.SOFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class AccessDurationParser extends DurationParser {
        @Override // com.google.common.cache.CacheBuilderSpec.DurationParser
        public void parseDuration(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit) {
            boolean z;
            if (cacheBuilderSpec.accessExpirationTimeUnit == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-8801697009987737629L, 3852477744588357069L, 4828433691676868285L, -8683387183851132303L, 6990654166412378516L}).toString());
            cacheBuilderSpec.accessExpirationDuration = j;
            cacheBuilderSpec.accessExpirationTimeUnit = timeUnit;
        }
    }

    /* loaded from: classes2.dex */
    public static class ConcurrencyLevelParser extends IntegerParser {
        @Override // com.google.common.cache.CacheBuilderSpec.IntegerParser
        public void parseInteger(CacheBuilderSpec cacheBuilderSpec, int i) {
            boolean z;
            if (cacheBuilderSpec.concurrencyLevel == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-5228930229182183137L, 786786791533213676L, -6672482178434269708L, -7373170580983276261L, 4572386941731474648L, 3469849253948831625L}).toString(), cacheBuilderSpec.concurrencyLevel);
            cacheBuilderSpec.concurrencyLevel = Integer.valueOf(i);
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class DurationParser implements ValueParser {
        @Override // com.google.common.cache.CacheBuilderSpec.ValueParser
        public void parse(CacheBuilderSpec cacheBuilderSpec, String str, @CheckForNull String str2) {
            TimeUnit timeUnit;
            if (!Strings.isNullOrEmpty(str2)) {
                try {
                    char charAt = str2.charAt(str2.length() - 1);
                    if (charAt != 'd') {
                        if (charAt != 'h') {
                            if (charAt != 'm') {
                                if (charAt == 's') {
                                    timeUnit = TimeUnit.SECONDS;
                                } else {
                                    throw new IllegalArgumentException(CacheBuilderSpec.format(new ObfuscatedString(new long[]{-2137017973523407195L, -5267769326516949319L, -4631120261985800312L, 89080613772028109L, 2839312889964558166L, -7923140007079941380L, 3024072762862081095L, 7249442013326328865L}).toString(), str, str2));
                                }
                            } else {
                                timeUnit = TimeUnit.MINUTES;
                            }
                        } else {
                            timeUnit = TimeUnit.HOURS;
                        }
                    } else {
                        timeUnit = TimeUnit.DAYS;
                    }
                    parseDuration(cacheBuilderSpec, Long.parseLong(str2.substring(0, str2.length() - 1)), timeUnit);
                    return;
                } catch (NumberFormatException unused) {
                    throw new IllegalArgumentException(CacheBuilderSpec.format(new ObfuscatedString(new long[]{2721209099785203657L, 3517797993960080492L, -7836774284404421529L, -2275915935151892252L, -2218103546814869513L, -6197869092728580171L}).toString(), str, str2));
                }
            }
            StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(21, str));
            sb.append(new ObfuscatedString(new long[]{-8137472987841923993L, 2007318087003057860L, -3871017545817689460L}).toString());
            sb.append(str);
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6202897135319458199L, -1691580859766875292L}), sb));
        }

        public abstract void parseDuration(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit);
    }

    /* loaded from: classes2.dex */
    public static class InitialCapacityParser extends IntegerParser {
        @Override // com.google.common.cache.CacheBuilderSpec.IntegerParser
        public void parseInteger(CacheBuilderSpec cacheBuilderSpec, int i) {
            boolean z;
            if (cacheBuilderSpec.initialCapacity == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-3248322370515656248L, -6471828982708981039L, -5267119627408153465L, -1126939722386720920L, 7634746292355093968L, 4711364288039548819L}).toString(), cacheBuilderSpec.initialCapacity);
            cacheBuilderSpec.initialCapacity = Integer.valueOf(i);
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class IntegerParser implements ValueParser {
        @Override // com.google.common.cache.CacheBuilderSpec.ValueParser
        public void parse(CacheBuilderSpec cacheBuilderSpec, String str, String str2) {
            if (!Strings.isNullOrEmpty(str2)) {
                try {
                    parseInteger(cacheBuilderSpec, Integer.parseInt(str2));
                } catch (NumberFormatException e) {
                    throw new IllegalArgumentException(CacheBuilderSpec.format(new ObfuscatedString(new long[]{-1208192559286819197L, -419109665829494077L, -2405020234741045880L, 1882436487326288058L, 5493613860132145964L, 6847250290760732873L}).toString(), str, str2), e);
                }
            } else {
                StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(21, str));
                sb.append(new ObfuscatedString(new long[]{1728413804965496373L, -6697808063463570781L, 7449721373364695824L}).toString());
                sb.append(str);
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2813363083871258954L, 6434249179889476064L}), sb));
            }
        }

        public abstract void parseInteger(CacheBuilderSpec cacheBuilderSpec, int i);
    }

    /* loaded from: classes2.dex */
    public static class KeyStrengthParser implements ValueParser {
        private final LocalCache.Strength strength;

        public KeyStrengthParser(LocalCache.Strength strength) {
            this.strength = strength;
        }

        @Override // com.google.common.cache.CacheBuilderSpec.ValueParser
        public void parse(CacheBuilderSpec cacheBuilderSpec, String str, @CheckForNull String str2) {
            boolean z;
            boolean z2 = false;
            if (str2 == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{9019492409111983096L, -7048902851645529388L, -6680004680080434728L, 3223053276128802247L, -373164754755663712L}).toString(), str);
            if (cacheBuilderSpec.keyStrength == null) {
                z2 = true;
            }
            Preconditions.checkArgument(z2, new ObfuscatedString(new long[]{-4935024605687429296L, 6729583361833863933L, -3747660899387791407L, 5655671128646093041L}).toString(), str, cacheBuilderSpec.keyStrength);
            cacheBuilderSpec.keyStrength = this.strength;
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class LongParser implements ValueParser {
        @Override // com.google.common.cache.CacheBuilderSpec.ValueParser
        public void parse(CacheBuilderSpec cacheBuilderSpec, String str, String str2) {
            if (!Strings.isNullOrEmpty(str2)) {
                try {
                    parseLong(cacheBuilderSpec, Long.parseLong(str2));
                } catch (NumberFormatException e) {
                    throw new IllegalArgumentException(CacheBuilderSpec.format(new ObfuscatedString(new long[]{1831948231522210383L, 5554473391321729029L, 1229675198225997719L, 5098823505267737192L, -9108446039240416721L, -2057539149622537698L}).toString(), str, str2), e);
                }
            } else {
                StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(21, str));
                sb.append(new ObfuscatedString(new long[]{5695368652744574882L, -6382662924845180092L, -7384373517481496161L}).toString());
                sb.append(str);
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1935250006717962163L, -2223095111503419732L}), sb));
            }
        }

        public abstract void parseLong(CacheBuilderSpec cacheBuilderSpec, long j);
    }

    /* loaded from: classes2.dex */
    public static class MaximumSizeParser extends LongParser {
        @Override // com.google.common.cache.CacheBuilderSpec.LongParser
        public void parseLong(CacheBuilderSpec cacheBuilderSpec, long j) {
            boolean z;
            boolean z2 = false;
            if (cacheBuilderSpec.maximumSize == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-4185440347999867658L, -3706323664863160280L, -1742268335889455667L, -8111811981572388846L, -6281057148044886537L}).toString(), cacheBuilderSpec.maximumSize);
            if (cacheBuilderSpec.maximumWeight == null) {
                z2 = true;
            }
            Preconditions.checkArgument(z2, new ObfuscatedString(new long[]{-4191943218602264265L, 381592543975988569L, -7878098754505521908L, 5769674636702065161L, 3063786721033165948L, 4072736376420161755L}).toString(), cacheBuilderSpec.maximumWeight);
            cacheBuilderSpec.maximumSize = Long.valueOf(j);
        }
    }

    /* loaded from: classes2.dex */
    public static class MaximumWeightParser extends LongParser {
        @Override // com.google.common.cache.CacheBuilderSpec.LongParser
        public void parseLong(CacheBuilderSpec cacheBuilderSpec, long j) {
            boolean z;
            boolean z2 = false;
            if (cacheBuilderSpec.maximumWeight == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{1662688291600798152L, -7222374301779754615L, -6847664400910872429L, 191162212071530086L, -8057572431518613916L, -5538507487588528294L}).toString(), cacheBuilderSpec.maximumWeight);
            if (cacheBuilderSpec.maximumSize == null) {
                z2 = true;
            }
            Preconditions.checkArgument(z2, new ObfuscatedString(new long[]{-8841474306179089712L, 143038788419969127L, -2795648512444308173L, 5336290993748387053L, 8459843916771155504L}).toString(), cacheBuilderSpec.maximumSize);
            cacheBuilderSpec.maximumWeight = Long.valueOf(j);
        }
    }

    /* loaded from: classes2.dex */
    public static class RecordStatsParser implements ValueParser {
        @Override // com.google.common.cache.CacheBuilderSpec.ValueParser
        public void parse(CacheBuilderSpec cacheBuilderSpec, String str, @CheckForNull String str2) {
            boolean z;
            boolean z2 = false;
            if (str2 == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{8957864846853507507L, -6664534924535617739L, -9007079598497264275L, 7580378602390980377L, -586137841475949702L}).toString());
            if (cacheBuilderSpec.recordStats == null) {
                z2 = true;
            }
            Preconditions.checkArgument(z2, new ObfuscatedString(new long[]{5231295712807311212L, 97415215065872689L, 465495016209058823L, -2395942093919829018L}).toString());
            cacheBuilderSpec.recordStats = Boolean.TRUE;
        }
    }

    /* loaded from: classes2.dex */
    public static class RefreshDurationParser extends DurationParser {
        @Override // com.google.common.cache.CacheBuilderSpec.DurationParser
        public void parseDuration(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit) {
            boolean z;
            if (cacheBuilderSpec.refreshTimeUnit == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{2354292983615979900L, 1809504107442203501L, -7402052565071952915L, 2708982961843503276L, -7231521849471439612L}).toString());
            cacheBuilderSpec.refreshDuration = j;
            cacheBuilderSpec.refreshTimeUnit = timeUnit;
        }
    }

    /* loaded from: classes2.dex */
    public interface ValueParser {
        void parse(CacheBuilderSpec cacheBuilderSpec, String str, @CheckForNull String str2);
    }

    /* loaded from: classes2.dex */
    public static class ValueStrengthParser implements ValueParser {
        private final LocalCache.Strength strength;

        public ValueStrengthParser(LocalCache.Strength strength) {
            this.strength = strength;
        }

        @Override // com.google.common.cache.CacheBuilderSpec.ValueParser
        public void parse(CacheBuilderSpec cacheBuilderSpec, String str, @CheckForNull String str2) {
            boolean z;
            boolean z2 = false;
            if (str2 == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{8987932160230328588L, 4919151780190715060L, 7517129829108200136L, 769095580720709371L, -8756371019819724512L}).toString(), str);
            if (cacheBuilderSpec.valueStrength == null) {
                z2 = true;
            }
            Preconditions.checkArgument(z2, new ObfuscatedString(new long[]{7411732233228431613L, -965278354276686114L, 3610697768078256221L, 8545053401840532073L}).toString(), str, cacheBuilderSpec.valueStrength);
            cacheBuilderSpec.valueStrength = this.strength;
        }
    }

    /* loaded from: classes2.dex */
    public static class WriteDurationParser extends DurationParser {
        @Override // com.google.common.cache.CacheBuilderSpec.DurationParser
        public void parseDuration(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit) {
            boolean z;
            if (cacheBuilderSpec.writeExpirationTimeUnit == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{1595780457657928779L, 33328296689168696L, 8029720943684258510L, 8494813694045645514L, -1879134661099461986L}).toString());
            cacheBuilderSpec.writeExpirationDuration = j;
            cacheBuilderSpec.writeExpirationTimeUnit = timeUnit;
        }
    }

    static {
        ImmutableMap.Builder put = ImmutableMap.builder().put(new ObfuscatedString(new long[]{-8476891686417210061L, -5449686257487964002L, 5951923638891526666L}).toString(), new InitialCapacityParser()).put(new ObfuscatedString(new long[]{-161388947759662609L, -5783056267166283593L, -1819540416939433695L}).toString(), new MaximumSizeParser()).put(new ObfuscatedString(new long[]{-131987351830912309L, -4101945799936845750L, -6449927201498976008L}).toString(), new MaximumWeightParser()).put(new ObfuscatedString(new long[]{-3022094297207701242L, 8389647389630833562L, 4171828570543212337L}).toString(), new ConcurrencyLevelParser());
        String obfuscatedString = new ObfuscatedString(new long[]{-2972480451169392103L, -5937718694746813650L}).toString();
        LocalCache.Strength strength = LocalCache.Strength.WEAK;
        VALUE_PARSERS = put.put(obfuscatedString, new KeyStrengthParser(strength)).put(new ObfuscatedString(new long[]{7481810535979793252L, -4305717428257552032L, -2795082123352765689L}).toString(), new ValueStrengthParser(LocalCache.Strength.SOFT)).put(new ObfuscatedString(new long[]{5593273027262876658L, -1699549675038357139L, -857905486724845484L}).toString(), new ValueStrengthParser(strength)).put(new ObfuscatedString(new long[]{7926196873175263529L, 7658711286536494707L, 8322529561830554697L}).toString(), new RecordStatsParser()).put(new ObfuscatedString(new long[]{-8113358119280637311L, -5785107551954016194L, -950484768595344985L, -3786353109008437360L}).toString(), new AccessDurationParser()).put(new ObfuscatedString(new long[]{-8775700358752185342L, -8908004882990449367L, -852817930645755103L}).toString(), new WriteDurationParser()).put(new ObfuscatedString(new long[]{-501894734483956297L, -5124116939549093453L, -6387874928313516923L, -3669767318914783767L}).toString(), new RefreshDurationParser()).put(new ObfuscatedString(new long[]{-3113316705577808315L, 41403803248487171L, -5073423981528908434L}).toString(), new RefreshDurationParser()).buildOrThrow();
    }

    private CacheBuilderSpec(String str) {
        this.specification = str;
    }

    public static CacheBuilderSpec disableCaching() {
        return parse(new ObfuscatedString(new long[]{-1292988390820959384L, -1421848866211755823L, 4503644185725915750L}).toString());
    }

    @CheckForNull
    private static Long durationInNanos(long j, @CheckForNull TimeUnit timeUnit) {
        if (timeUnit == null) {
            return null;
        }
        return Long.valueOf(timeUnit.toNanos(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String format(String str, Object... objArr) {
        return String.format(Locale.ROOT, str, objArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static CacheBuilderSpec parse(String str) {
        boolean z;
        String str2;
        CacheBuilderSpec cacheBuilderSpec = new CacheBuilderSpec(str);
        if (!str.isEmpty()) {
            for (String str3 : KEYS_SPLITTER.split(str)) {
                ImmutableList copyOf = ImmutableList.copyOf(KEY_VALUE_SPLITTER.split(str3));
                Preconditions.checkArgument(!copyOf.isEmpty(), new ObfuscatedString(new long[]{8074894747343090761L, -1686700399256426102L, -3477398514792589485L, -4358759815007952360L}).toString());
                boolean z2 = false;
                if (copyOf.size() <= 2) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-2218895570031766041L, -3740996942490113906L, -5437497655821463596L, -4512259353951453611L, -727176663004447212L, -1445450955157603456L, 1589597311202936215L}).toString(), str3);
                String str4 = (String) copyOf.get(0);
                ValueParser valueParser = VALUE_PARSERS.get(str4);
                if (valueParser != null) {
                    z2 = true;
                }
                Preconditions.checkArgument(z2, new ObfuscatedString(new long[]{-1742633418595866640L, 7136041298731347616L, 1837555805624234591L}).toString(), str4);
                if (copyOf.size() == 1) {
                    str2 = null;
                } else {
                    str2 = (String) copyOf.get(1);
                }
                valueParser.parse(cacheBuilderSpec, str4, str2);
            }
        }
        return cacheBuilderSpec;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CacheBuilderSpec)) {
            return false;
        }
        CacheBuilderSpec cacheBuilderSpec = (CacheBuilderSpec) obj;
        if (Objects.equal(this.initialCapacity, cacheBuilderSpec.initialCapacity) && Objects.equal(this.maximumSize, cacheBuilderSpec.maximumSize) && Objects.equal(this.maximumWeight, cacheBuilderSpec.maximumWeight) && Objects.equal(this.concurrencyLevel, cacheBuilderSpec.concurrencyLevel) && Objects.equal(this.keyStrength, cacheBuilderSpec.keyStrength) && Objects.equal(this.valueStrength, cacheBuilderSpec.valueStrength) && Objects.equal(this.recordStats, cacheBuilderSpec.recordStats) && Objects.equal(durationInNanos(this.writeExpirationDuration, this.writeExpirationTimeUnit), durationInNanos(cacheBuilderSpec.writeExpirationDuration, cacheBuilderSpec.writeExpirationTimeUnit)) && Objects.equal(durationInNanos(this.accessExpirationDuration, this.accessExpirationTimeUnit), durationInNanos(cacheBuilderSpec.accessExpirationDuration, cacheBuilderSpec.accessExpirationTimeUnit)) && Objects.equal(durationInNanos(this.refreshDuration, this.refreshTimeUnit), durationInNanos(cacheBuilderSpec.refreshDuration, cacheBuilderSpec.refreshTimeUnit))) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(this.initialCapacity, this.maximumSize, this.maximumWeight, this.concurrencyLevel, this.keyStrength, this.valueStrength, this.recordStats, durationInNanos(this.writeExpirationDuration, this.writeExpirationTimeUnit), durationInNanos(this.accessExpirationDuration, this.accessExpirationTimeUnit), durationInNanos(this.refreshDuration, this.refreshTimeUnit));
    }

    public CacheBuilder<Object, Object> toCacheBuilder() {
        CacheBuilder<Object, Object> newBuilder = CacheBuilder.newBuilder();
        Integer num = this.initialCapacity;
        if (num != null) {
            newBuilder.initialCapacity(num.intValue());
        }
        Long l = this.maximumSize;
        if (l != null) {
            newBuilder.maximumSize(l.longValue());
        }
        Long l2 = this.maximumWeight;
        if (l2 != null) {
            newBuilder.maximumWeight(l2.longValue());
        }
        Integer num2 = this.concurrencyLevel;
        if (num2 != null) {
            newBuilder.concurrencyLevel(num2.intValue());
        }
        LocalCache.Strength strength = this.keyStrength;
        if (strength != null) {
            if (AnonymousClass1.$SwitchMap$com$google$common$cache$LocalCache$Strength[strength.ordinal()] == 1) {
                newBuilder.weakKeys();
            } else {
                throw new AssertionError();
            }
        }
        LocalCache.Strength strength2 = this.valueStrength;
        if (strength2 != null) {
            int i = AnonymousClass1.$SwitchMap$com$google$common$cache$LocalCache$Strength[strength2.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    newBuilder.softValues();
                } else {
                    throw new AssertionError();
                }
            } else {
                newBuilder.weakValues();
            }
        }
        Boolean bool = this.recordStats;
        if (bool != null && bool.booleanValue()) {
            newBuilder.recordStats();
        }
        TimeUnit timeUnit = this.writeExpirationTimeUnit;
        if (timeUnit != null) {
            newBuilder.expireAfterWrite(this.writeExpirationDuration, timeUnit);
        }
        TimeUnit timeUnit2 = this.accessExpirationTimeUnit;
        if (timeUnit2 != null) {
            newBuilder.expireAfterAccess(this.accessExpirationDuration, timeUnit2);
        }
        TimeUnit timeUnit3 = this.refreshTimeUnit;
        if (timeUnit3 != null) {
            newBuilder.refreshAfterWrite(this.refreshDuration, timeUnit3);
        }
        return newBuilder;
    }

    public String toParsableString() {
        return this.specification;
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).addValue(toParsableString()).toString();
    }
}
